#include <math.h>
#include <stdio.h>

int main(){
	double u;
	
	if(0 <= u && u <= 1) {
		
		double res=(3 * u*u*u - 6 * u*u + 4) / 6.0;
		if(0.16 >= res || res >= 0.7)
			printf("Solved 75");
	}
		
	return 0;
}
