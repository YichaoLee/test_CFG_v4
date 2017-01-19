#include <math.h>
#include <stdio.h>

int main(){
	double u;
	
	if(0 <= u && u <= 1) {
		
		double res=(1 - u) * (1 - u) * (1 - u) / 6.0;
		if(0 >= res || res >= 0.17)
			printf("Solved 75");
	}
		
	return 0;
}
