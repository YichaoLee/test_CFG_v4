#include <math.h>
#include <stdio.h>

int main(){
	double x;
	
	if(x > -1.57079632679 && x < 1.57079632679) {
		
		double res=x - (x*x*x)/6.0 + (x*x*x*x*x)/120.0 + (x*x*x*x*x*x*x)/5040.0;
		if(-1.01 >= res || res >= 1.01)
			printf("Solved 75");
	}
		
	return 0;
}
