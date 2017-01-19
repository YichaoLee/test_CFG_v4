#include <math.h>
#include <stdio.h>

int main(){
	double u;
	
	if(0 <= u && u <= 1) {
		
		double res=-u*u*u / 6.0;
		if(-0.17 >= res || res >= 0)
			printf("Solved 75");
	}
		
	return 0;
}
