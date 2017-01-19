#include <math.h>
#include <stdio.h>

int main(){
	double u;
	double v;
	double T;
	if(-30 <= u && u <= 120 && 320.0 <= v && v <= 20300 && -50 <= T && T <= 30) {
		double t1=331.4 + 0.6 * T;
		double res=(- (t1) *v) / ((t1 + u)*(t1 + u));
		if(-83.06530 >= res || res >= -0.507441)
			printf("Solved 75");
	}
		
	return 0;
}
