#include <math.h>
#include <stdio.h>

int main(){
	double r;
	double K;
	double x;
	if(r >= 4.0 && r <= 4.0 && K >= 1.11 && K <= 1.11 && 0.1 <= x && x <= 0.3) {
		
		double res=(r*x) / (1 + (x/K));
		if(0.3148936 >= res || res >= 1.1008265)
			printf("Solved 75");
	}
		
	return 0;
}
