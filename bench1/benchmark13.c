#include <math.h>
#include <stdio.h>

int main(){
	double x1;
	double x2;
	double x3;
	if(-15.0 <= x1 && x1 <= 15 && -15.0 <= x2 && x2 <= 15.0 && -15.0 <= x3 && x3 <= 15) {
		
		double res=-x1*x2 - 2*x2*x3 - x1 - x3;
		if(-705.0 >= res || res >= 705.0)
			printf("Solved 75");
	}
		
	return 0;
}
