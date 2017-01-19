#include <math.h>
#include <stdio.h>

int main(){
	double x1;
	double x2;
	double x3;
	if(-15.0 <= x1 && x1 <= 15 && -15.0 <= x2 && x2 <= 15.0 && -15.0 <= x3 && x3 <= 15) {
		
		double res=2*x1*x2*x3 + 3*x3*x3 - x2*x1*x2*x3 + 3*x3*x3 - x2;
		if(-56010.0001 >= res || res >= 58740.0)
			printf("Solved 75");
	}
		
	return 0;
}
