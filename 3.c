#include "math.h"
#include <assert.h>

int main(){
	double p[5];
	double *q = &p[0];
	*q=1.0;
	double t=asin(p[0]);
	assert(t==1);
	int i;
	for(i=1;i<5;i++)
		p[i]=pow(-1,i)*p[i-1];
        t=log(p[4]);
	return 0; 
}
