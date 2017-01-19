#include <math.h>
#include <stdio.h>

int main(){
	double u;
	double v;
	double T;
	if(-125.0 <= u && u <= 125.0 && 15.0 <= v && v <= 25000 && -40 <= T && T <= 60) {
		double t1=331.4 + 0.6 * T;
		double res=(- (t1) *v) / ((t1 + u)*(t1 + u));
		if(-230.990546 >= res || res >= -0.0227296)
			printf("Solved 75");
	}
		
	return 0;
}
