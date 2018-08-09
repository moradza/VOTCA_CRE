/* 
 * Copyright 2009-2011 The VOTCA Development Team (http://www.votca.org)
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

#ifndef _IMCIO_H
#define	_IMCIO_H

#include <string>
#include <list>
#include <boost/numeric/ublas/vector.hpp>
#include <boost/numeric/ublas/symmetric.hpp>
#include <boost/numeric/ublas/matrix.hpp>
#include <votca/tools/rangeparser.h>

namespace votca { namespace csg {
using namespace votca::tools;

using namespace std;

void imcio_write_dS(const string &file, ub::vector<double> &r, ub::vector<double> &dS, std::list<int> *list=NULL);
void imcio_write_matrix(const string &file, ub::matrix<double> &gmc, std::list<int> *list=NULL);
void imcio_write_index(const string &file, vector<string> &names, vector<RangeParser> &ranges);

void imcio_read_dS(const string &file, ub::vector<double> &r, ub::vector<double> &dS);
void imcio_read_matrix(const string &file, ub::matrix<double> &gmc);
void imcio_read_index(const string &file, vector<string> &names, vector<RangeParser> &ranges);

}}

#endif	/* _IMCIO_H */

