#include <math.h>
#include <stdio.h>

int main(){
	double x;
	
	
	if(-2.0 < x && x < 2.0) {
		
		double res=0.954929658551372 * x -  0.12900613773279798*(x*x*x);
		if(-1.00000001 >= res || res >= 1.0000001)
			printf("Solved 75");
	}
		
	return 0;
}
