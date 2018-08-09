
#include <votca/csg/potentialfunctions/potentialfunctionljg.h>

PotentialFunctionLJG::PotentialFunctionLJG(const string& name_,const double min_,
                                           const double max_) : PotentialFunction(name_,2,min_,max_){
}

double PotentialFunctionLJG::CalculateF (const double r) const {

  // lj 12-6 part + gaussian
  if ( r >= _min && r <= _cut_off )
    return _lam(0)/pow(r,12) - _lam(1)/pow(r,9);
  else
    return 0.0;

}

double PotentialFunctionLJG::CalculateV (const double r) const {

   // lj 12-6 part + gaussian
   if ( r >= _min && r <= _cut_off )
      return _lam(0)/pow(r,12) - _lam(1)/pow(r,9);
   else
      return 0.0;
}
  


// calculate first derivative w.r.t. ith parameter
double PotentialFunctionLJG::CalculateDF(const int i, const double r) const {

  if ( r >= _min && r <= _cut_off ) {

    switch(i) {
    case 0:
      return 1.0/pow(r,12);
    case 1:
      return -1.0/pow(r,9);
    }

  }
  return 0.0;
}

double PotentialFunctionLJG::CalculateDV(const int i, const double r) const{
  if ( r >= _min && r <= _cut_off ) {

    switch(i) {
    case 0:
      return 12.0/pow(r,12);
    case 1:
      return -6.0/pow(r,9);
    }

  }
  return 0.0;

}

// calculate second derivative w.r.t. ith parameter
double PotentialFunctionLJG::CalculateD2F(const int i, const int j,
                                          const double r) const {

  if ( r >= _min && r <= _cut_off ) {

    switch(i) {
    case 0:
      // all second derivatives w.r.t. c12 are zero
      return 0.0;
    case 1:
      return 0.0;
      }
  }
  return 0.0;
}
