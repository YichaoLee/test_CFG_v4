#include <math.h>
#include <stdio.h>

int main(){
	double x;
	
	
	if(x >= 0.0 && x < 1.0) {
		
		double res=1.0 + 0.5*x - 0.125*x*x + 0.0625*x*x*x - 0.0390625*x*x*x*x;
		if(0.9999999 >= res || res >= 1.398438)
			printf("Solved 75");
	}
		
	return 0;
}
