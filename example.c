#include <assert.h>
#include <math.h>
double foo(double x, double y){
	return sin(x*y)+pow(x,2);
}
 
int main(){
	double a[2];
	double x,y,z;
	x = asin(y);
	if(x>0)
		z = pow(a[1],2)/y;
	else
		z = foo(x,y);
	assert(z>0);
	return 0;
}
