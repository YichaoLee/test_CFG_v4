#include <math.h>











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
  double fff;
};
typedef struct gsl_sf_result_struct gsl_sf_result;

int
gsl_sf_bessel_Ynu_asympx_e(const double nu, const double x, gsl_sf_result * result);
				 
int main(){
	const double x;const double nu;
	gsl_sf_result result;
	
	gsl_sf_bessel_Ynu_asympx_e(nu, x, &result);
	
	return 0;
}

int
gsl_sf_bessel_asymp_Mnu_e(const double nu, const double x, double * result)
{
  const double r  = 2.0*nu/x;
  const double r2 = r*r;
  const double x2 = x*x;
  const double term1 = (r2-1.0/x2)/8.0;
  const double term2 = (r2-1.0/x2)*(r2-9.0/x2)*3.0/128.0;
  const double Mnu2_c = 2.0/(M_PI) * (1.0 + term1 + term2);
  *result = sqrt(Mnu2_c)/sqrt(x); /* will never underflow this way */
  return GSL_SUCCESS;
}

int
gsl_sf_bessel_asymp_thetanu_corr_e(const double nu, const double x, double * result)
{
  const double r  = 2.0*nu/x;
  const double r2 = r*r;
  const double x2 = x*x;
  const double term1 = x*(r2 - 1.0/x2)/8.0;
  const double term2 = x*(r2 - 1.0/x2)*(r2 - 25.0/x2)/384.0;
  *result = (-0.25*M_PI + term1 + term2);
  return GSL_SUCCESS;
}

int
gsl_sf_bessel_Ynu_asympx_e(const double nu, const double x, gsl_sf_result * result)
{
  double ampl;
  double theta;
  double alpha = x;
  double beta  = -0.5*nu*M_PI;
  int stat_a = gsl_sf_bessel_asymp_Mnu_e(nu, x, &ampl);
  int stat_t = gsl_sf_bessel_asymp_thetanu_corr_e(nu, x, &theta);
  double sin_alpha = sin(alpha);
  double cos_alpha = cos(alpha);
  double sin_chi   = sin(beta + theta);
  double cos_chi   = cos(beta + theta);
  double sin_term     = sin_alpha * cos_chi + sin_chi * cos_alpha;
  double sin_term_mag = fabs(sin_alpha * cos_chi) + fabs(sin_chi * cos_alpha);
  result->val  = ampl * sin_term;
  result->err  = fabs(ampl) * GSL_DBL_EPSILON * sin_term_mag;
  result->err += fabs(result->val) * 2.0 * GSL_DBL_EPSILON;

  if(fabs(alpha) > 1.0/GSL_DBL_EPSILON) {
    result->err *= 0.5 * fabs(alpha);
  }
  else if(fabs(alpha) > 1.0/GSL_SQRT_DBL_EPSILON) {
    result->err *= 256.0 * fabs(alpha) * GSL_SQRT_DBL_EPSILON;
  }

  return GSL_ERROR_SELECT_2(stat_t, stat_a);
}
