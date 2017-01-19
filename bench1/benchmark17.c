#include <math.h>
#include <stdio.h>

int main(){
	double a;
	double res;
	if(4.500005 <= a && a <= 6.5) {
		double b = 4.0;
		double c = 8.5;
		if (a < b) {res=sqrt((c+(b+a)) * (a-(c-b)) * (a+(c-b)) * (c+(b-a)))/4.0;} 
		else {res=sqrt((c+(a+b)) * (b-(c-a)) * (b+(c-a)) * (c+(a-b)))/4.0;}
		if(res < 0.0)
			printf("Solved 75");
	}
		
	return 0;
}
