#include "math.h"
#include <assert.h>

int main(){
	double p[5];
	double *q = &p[0];
	*q=0.1;
	double t=sqrt(p[0]);
        double a=5/t;
	assert(t>0);
	int i;
	for(i=1;i<5;i++)
		p[i]=pow(-1,i)*p[i-1];
        t=log(p[4]);
	return 0; 
}
