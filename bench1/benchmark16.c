#include <math.h>
#include <stdio.h>

int main(){
	double x;
	double res;
	
	if(0 < x && x < 10) {
		if (x*x - x >= 0) res=x/10;
		else res=x*x + 2;
		if(0 >= res || res >= 3.0)
			printf("Solved 75");
	}
		
	return 0;
}
