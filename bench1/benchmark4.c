#include <math.h>
#include <stdio.h>

int main(){
	double v;
	double w;
	double r;
	if(-4.5 <= v && v <= -0.3 && 0.4 <= w && w <= 0.9 && 3.8 <= r && r <= 7.8) {
		
		double res=3 + 2/(r*r) - 0.125*(3-2*v)*(w*w*r*r)/(1-v) - 4.5;
		if(-18.525727 >= res || res >= -1.991604)
			printf("Solved 75");
	}
		
	return 0;
}
