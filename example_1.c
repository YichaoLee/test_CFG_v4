#include <assert.h>
#include <math.h>
double foo(double x, double y){
	return x-y+4.2*x;
}
 
int main(){
	double a[2];
	double x,y,z;
	x = y+1e8f;
	if(x>0)
		z = x+y/2.2;
	else
		z = foo(x,y);
	assert(z>0);
	return 0;
}
