#include <math.h>









#define GSL_LOG_DBL_MIN   (-7.0839641853226408e+02)
#define GSL_LOG_DBL_MAX    7.0978271289338397e+02
#define GSL_SUCCESS 0
#define GSL_ERROR_SELECT_2(a,b)       ((a) != GSL_SUCCESS ? (a) : ((b) != GSL_SUCCESS ? (b) : GSL_SUCCESS))


#define GSL_DBL_EPSILON 	2.2204460492503131e-16
#define GSL_DBL_MIN 	2.2250738585072014e-308
#define GSL_DBL_MAX 	1.7976931348623157e+308
#define GSL_SQRT_DBL_EPSILON 	1.4901161193847656e-08
#define GSL_ROOT3_DBL_EPSILON 	6.0554544523933429e-06



struct gsl_sf_result_struct {
  double val;
  double err;
};
typedef struct gsl_sf_result_struct gsl_sf_result;

int
gsl_sf_bessel_Inu_scaled_asymp_unif_e(const double nu, const double x, gsl_sf_result * result);
				 
int main(){
	const double x;const double nu;
	gsl_sf_result result;
	
	gsl_sf_bessel_Inu_scaled_asymp_unif_e(nu, x, &result);
	
	return 0;
}

int gsl_sf_exp_e(const double x, gsl_sf_result * result)
{
  if(x > GSL_LOG_DBL_MAX) {
	result->val = 0.0;
    result->err = 0;
    return 1;
  }
  else if(x < GSL_LOG_DBL_MIN) {
	result->val = 0.0;
    result->err = 0;
    return 2;
  }
  else {
    result->val = exp(x);
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
}

inline static double 
debye_u1(const double * tpow)
{
  return (3.0*tpow[1] - 5.0*tpow[3])/24.0;
}

inline static double 
debye_u2(const double * tpow)
{
  return (81.0*tpow[2] - 462.0*tpow[4] + 385.0*tpow[6])/1152.0;
}

inline
static double debye_u3(const double * tpow)
{
  return (30375.0*tpow[3] - 369603.0*tpow[5] + 765765.0*tpow[7] - 425425.0*tpow[9])/414720.0;
}

inline
static double debye_u4(const double * tpow)
{
  return (4465125.0*tpow[4] - 94121676.0*tpow[6] + 349922430.0*tpow[8] - 
          446185740.0*tpow[10] + 185910725.0*tpow[12])/39813120.0;
}

inline
static double debye_u5(const double * tpow)
{
  return (1519035525.0*tpow[5]     - 49286948607.0*tpow[7] + 
          284499769554.0*tpow[9]   - 614135872350.0*tpow[11] + 
          566098157625.0*tpow[13]  - 188699385875.0*tpow[15])/6688604160.0;
}

int
gsl_sf_bessel_Inu_scaled_asymp_unif_e(const double nu, const double x, gsl_sf_result * result)
{
  int i;
  double z = x/nu;
  double root_term = sqrt(1.0 + z*z);
  double pre = 1.0/sqrt(2.0*M_PI*nu * root_term);
  double eta = root_term + log(z/(1.0+root_term));
  double ex_arg = ( z < 1.0/GSL_ROOT3_DBL_EPSILON ? nu*(-z + eta) : -0.5*nu/z*(1.0 - 1.0/(12.0*z*z)) );
  gsl_sf_result ex_result;
  int stat_ex = gsl_sf_exp_e(ex_arg, &ex_result);
  if(stat_ex == GSL_SUCCESS) {
    double t = 1.0/root_term;
    double sum;
    double tpow[16];
    tpow[0] = 1.0;
    for(i=1; i<16; i++) tpow[i] = t * tpow[i-1];
    sum = 1.0 + debye_u1(tpow)/nu + debye_u2(tpow)/(nu*nu) + debye_u3(tpow)/(nu*nu*nu)
          + debye_u4(tpow)/(nu*nu*nu*nu) + debye_u5(tpow)/(nu*nu*nu*nu*nu);
    result->val  = pre * ex_result.val * sum;
    result->err  = pre * ex_result.val / (nu*nu*nu*nu*nu*nu);
    result->err += pre * ex_result.err * fabs(sum);
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    result->val = 0.0;
    result->err = 0.0;
    return stat_ex;
  }
}
