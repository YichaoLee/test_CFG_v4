#include <math.h>
#include <stdio.h>

int main(){
	double i;double res;
	double sqrt2 = 1.414213538169860839843750;
	if(1.0 <= i && i <= 2.0) {
		if (i >= 2)	res=sqrt2 * (1.0 + (i/2 - 1) * (0.5 - 0.125 * ( i/2 - 1)));
		else	res=1 + (i - 1) * (0.5 + (i-1) * (-0.125 + (i - 1) * 0.0625));
		
		if(1 > res || res > 1.4531)
			printf("Solved 75");
	}
		
	return 0;
}
