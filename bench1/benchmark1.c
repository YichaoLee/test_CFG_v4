#include <math.h>
#include <stdio.h>

int main(){
	double u;
	double v;
	double T;
	if(-100.0 <= u && u <= 100 && 20 <= v && v <= 20000 && -30 <= T && T <= 50) {
		double t1=331.4 + 0.6 * T;
		double res=(- (t1) *v) / ((t1 + u)*(t1 + u));
		if(-137.63858 >= res || res >= -0.03394)
			printf("Solved 75");
	}
		
	return 0;
}
