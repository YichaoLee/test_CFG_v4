#include <math.h>









#define GSL_SUCCESS 0


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
gsl_sf_bessel_Jnu_asympx_e(const double nu, const double x, gsl_sf_result * result);
				 
int main(){
	
	
	const double x;const double nu;
	gsl_sf_result result;
	
	gsl_sf_bessel_Jnu_asympx_e(nu, x, &result);
	
	return 0;
}

int
gsl_sf_bessel_Jnu_asympx_e(const double nu, const double x, gsl_sf_result * result)
{
  double mu   = 4.0*nu*nu;
  double mum1 = mu-1.0;
  double mum9 = mu-9.0;
  double mum25 = mu-25.0;
  double chi = x - (0.5*nu + 0.25)*M_PI;
  double P   = 1.0 - mum1*mum9/(128.0*x*x);
  double Q   = mum1/(8.0*x) * (1.0 - mum9*mum25/(384.0*x*x));
  double pre = sqrt(2.0/(M_PI*x));
  double c   = cos(chi);
  double s   = sin(chi);
  double r   = mu/x;
  result->val  = pre * (c*P - s*Q);
  result->err  = pre * GSL_DBL_EPSILON * (1.0 + fabs(x)) * (fabs(c*P) + fabs(s*Q));
  result->err += pre * fabs(0.1*r*r*r*r);
  return GSL_SUCCESS;
}
