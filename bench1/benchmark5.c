#include <math.h>
#include <stdio.h>

int main(){
	double v;
	double w;
	double r;
	if(-4.5 <= v && v <= -0.3 && 0.4 <= w && w <= 0.9 && 3.8 <= r && r <= 7.8) {
		
		double res=6*v - 0.5 * v * (w*w*r*r) / (1-v) - 2.5;
		if(-28.55484 >= res || res >= 3.822207)
			printf("Solved 75");
	}
		
	return 0;
}
