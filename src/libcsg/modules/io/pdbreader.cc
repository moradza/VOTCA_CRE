/*
 * Copyright 2009-2013 The VOTCA Development Team (http://www.votca.org)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#include <vector>
#include <boost/lexical_cast.hpp>
#include <boost/algorithm/string.hpp>
#include <votca/tools/getline.h>
#include "pdbreader.h"

namespace votca { namespace csg {
    using namespace boost;
using namespace std;

bool PDBReader::ReadTopology(string file,  Topology &top)
{
   _topology = true;
   top.Cleanup();

   _fl.open(file.c_str());
    if(!_fl.is_open())
        throw std::ios_base::failure("Error on open topology file: " + file);

   NextFrame(top);

    _fl.close();

    return true;
}

bool PDBReader::Open(const string &file)
{
    _fl.open(file.c_str());
    if(!_fl.is_open())
        throw std::ios_base::failure("Error on open trajectory file: " + file);
    return true;
}

void PDBReader::Close()
{
    _fl.close();
}

bool PDBReader::FirstFrame(Topology &top)
{
    _topology = false;
    NextFrame(top);
    return true;
}

bool PDBReader::NextFrame(Topology &top)
{
    string line;
    int i = 0 ;
    while ( std::getline(_fl, line) ){
        if( wildcmp("CRYST1*",line.c_str())){
	     string a, b, c, alpha, beta, gamma;
	     try {
               //1 -  6       Record name    "CRYST1"
	       a=string(line,(7-1),9); //7 - 15       Real(9.3)      a (Angstroms)
	       b=string(line,(16-1),9); //16 - 24       Real(9.3)      b (Angstroms)
	       c=string(line,(25-1),9); //25 - 33       Real(9.3)      c (Angstroms)
	       alpha=string(line,(34-1),7); //34 - 40       Real(7.2)      alpha (degrees)
               beta=string(line,(41-1),7); //41 - 47       Real(7.2)      beta (degrees)
	       gamma=string(line,(48-1),7); //48 - 54       Real(7.2)      gamma (degrees)
               //56 - 66       LString        Space group
	       //67 - 70       Integer        Z value
	    } catch (std::out_of_range& err) {
	      throw std::runtime_error("Misformated pdb file in CRYST1 line");
	    }
	    boost::algorithm::trim(a);
	    boost::algorithm::trim(b);
	    boost::algorithm::trim(c);
	    boost::algorithm::trim(alpha);
	    boost::algorithm::trim(beta);
	    boost::algorithm::trim(gamma);
	    if ((!wildcmp("90*",alpha.c_str()))||(!wildcmp("90*",alpha.c_str()))||(!wildcmp("90*",alpha.c_str()))){
	         throw std::runtime_error("Non cubical box in pdb file not implemented, yet!");
            }
	    top.setBox(matrix(vec(boost::lexical_cast<double>(a)/10.0, 0, 0),
	                      vec(0, boost::lexical_cast<double>(b)/10.0, 0),
			      vec(0, 0, boost::lexical_cast<double>(c)/10.0)));

	}
        if( wildcmp("ATOM*",line.c_str()) || wildcmp("HETATM*",line.c_str())){
            
            //      according to PDB format
	    string x,y,z, resNum, resName, atName;
            try {
	      /* Some pdb don't include all this, read only what we realy need*/
	      /* leave this here in case we need more later*/
              //string recType    (line,( 1-1),6); // str,  "ATOM", "HETATM"
              //string atNum      (line,( 7-1),6); // int,  Atom serial number
              atName=string(line,(13-1),4); // str,  Atom name
              //string atAltLoc   (line,(17-1),1); // char, Alternate location indicator
              resName=string(line,(18-1),3); // str,  Residue name
              //string chainID    (line,(22-1),1); // char, Chain identifier
              resNum=string(line,(23-1),4); // int,  Residue sequence number
              //string atICode    (line,(27-1),1); // char, Code for insertion of res
              x=string(line,(31-1),8); // float 8.3 ,x
              y=string(line,(39-1),8); // float 8.3 ,y
              z=string(line,(47-1),8); // float 8.3 ,z
              //string atOccup    (line,(55-1),6); // float  6.2, Occupancy
              //string atTFactor  (line,(61-1),6); // float  6.2, Temperature factor
              //string segID      (line,(73-1),4); // str, Segment identifier
              //string atElement  (line,(77-1),2); // str, Element symbol
              //string atCharge   (line,(79-1),2); // str, Charge on the atom

	    } catch (std::out_of_range& err) {
	      throw std::runtime_error("Misformated pdb file in atom line # "+ boost::lexical_cast<string>(i));
	    }
            boost::algorithm::trim(atName);
            boost::algorithm::trim(resName);
            boost::algorithm::trim(resNum);
            boost::algorithm::trim(x);
            boost::algorithm::trim(y);
            boost::algorithm::trim(z);

	    i++;
            if(!_topology && i > top.BeadCount())
              throw std::runtime_error("number of beads in topology and trajectory differ");

            Bead *b;
            if(_topology){
	      int resnr;
	      try {
		resnr = boost::lexical_cast<int>(resNum);
	      } catch(bad_lexical_cast &) {
	        throw std::runtime_error("Cannot convert resNum='"+ resNum+"' to int, that usallly means: misformated pdb file");
	      }
              if (resnr < 1)
                throw std::runtime_error("Misformated pdb file, resnr has to be > 0");
	      //TODO: fix the case that resnr is not in ascending order
              if(resnr > top.ResidueCount()) {
                while ((resnr-1)>top.ResidueCount()){ //pdb resnr should start with 1 but accept sloppy files
	          top.CreateResidue("DUMMY"); // create dummy residue, hopefully it will never show
	          cout << "Warning: residue numbers not continous, create DUMMY residue with nr " << top.ResidueCount() << endl;
		}
                top.CreateResidue(resName);
	      }
              //this is not correct, but still better than no type at all!
	      BeadType *type = top.GetOrCreateBeadType(atName);
              
	      // res -1 as internal number starts with 0
	      b = top.CreateBead(1, atName, type, resnr-1, 1., 0.);
	    } else {
                b = top.getBead(i-1);
	    }
            // convert to nm from A
            b->setPos(vec(
                    boost::lexical_cast<double>(x)/10.0,
                    boost::lexical_cast<double>(y)/10.0,
                    boost::lexical_cast<double>(z)/10.0
                ));

	}

        if (( line == "ENDMDL" ) || ( line == "END" ) || ( _fl.eof())){
          break;
	}
    }

    if(!_topology && (i>0) && i != top.BeadCount())
      throw std::runtime_error("number of beads in topology and trajectory differ");
   
    if (_topology)
      cout << "WARNING: topology created from .pdb file, charges and masses are wrong!\n";
    
    return !_fl.eof();
}

}}

