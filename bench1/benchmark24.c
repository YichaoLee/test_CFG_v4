#include <math.h>
#include <stdio.h>

int main(){
	double e;double res;
	double r1 = 0.0;double const1 = 2.25;double r2 = 5 * const1;double const2 = 1.1;double r3 = r2 + 20 * const2;
	if(0.0 <= e && e <= 100.0) {
		if (e < 5)	res=e * 2.25 + r1;
		else if (e < 25)	res=(e - 5) * 1.1 + r2;
		else	res=r3;
		if(-2.25e-5 > res || res > 33.26)
			printf("Solved 75");
	}
		
	return 0;
}
