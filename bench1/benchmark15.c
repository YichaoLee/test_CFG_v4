#include <math.h>
#include <stdio.h>

int main(){
	double a;
	double b;
	double c;
	if(1.0 < a && a < 9.0 && 1.0 < b && b < 9.0 && 1.0 < c && c < 9.0 && a + b > c + 0.1 && a + c > b + 0.1 && b + c > a + 0.1) {
		double s = (a + b + c)/2.0;
		double res=sqrt(s * (s - a) * (s - b) * (s - c));
		if(0.29663 >= res || res >= 35.0741)
			printf("Solved 75");
	}
		
	return 0;
}
