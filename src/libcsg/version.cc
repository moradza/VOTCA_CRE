/* 
 * Copyright 2009-2015 The VOTCA Development Team (http://www.votca.org)
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

#include <votca_config.h>
#include <votca/tools/version.h>
#include <iostream>
#include <votca/csg/version.h>

#ifdef GMX
#if (GMX == 52)
#include <gromacs/utility/baseversion.h>
#else
#include <gromacs/legacyheaders/copyrite.h>
#ifdef GMX_DOUBLE
extern void gmx_is_double_precision();
#else
extern void gmx_is_single_precision();
#endif
#endif
// this one is needed because of bool is defined in one of the headers included by gmx
#undef bool
#endif

extern "C" {
   void VotcaCsgFromC(){
     //do nothing - this is just that we have a c function for autotools/cmake
     //sanity check if GMX is the write precision
#ifdef GMX
#if (GMX > 51) && (GMX_DOUBLE == 1)
     gmx_is_double_precision();
#elif (GMX < 52) && defined(GMX_DOUBLE)
     gmx_is_double_precision();
#else
     gmx_is_single_precision();
#endif
#endif
   }
}

namespace votca { namespace csg {

//defines gitversion
#include "gitversion.h"
static const std::string version_str = std::string(VERSION) + " " + gitversion + " (compiled " __DATE__ ", " __TIME__ ")";

const std::string &CsgVersionStr()
{
    return version_str;
}

void HelpTextHeader(const std::string &tool_name)
{
    std::cout
         << "==================================================\n"
         << "========   VOTCA (http://www.votca.org)   ========\n"
         << "==================================================\n\n"
	 << "please submit bugs to " PACKAGE_BUGREPORT "\n\n" 
	 << tool_name << ", version " << votca::csg::CsgVersionStr() 
         << "\nvotca_tools, version " << votca::tools::ToolsVersionStr()
#ifdef GMX
#if GMX > 51
         << "\ngromacs, " << gmx_version()
#else
         << "\ngromacs, " << GromacsVersion()
#endif
#if (GMX > 51) && (GMX_DOUBLE == 1)
	 << " (double precision)"
#elif (GMX < 52) && defined(GMX_DOUBLE)
	 << " (double precision)"
#else
	 << " (single precision)"
#endif
#else
	 << "\n"
#endif
         << "\n\n";
}

}}

