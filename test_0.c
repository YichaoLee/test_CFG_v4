#include <assert.h>
#include <math.h>

int main(){
	double x,y,z;
	if(y>1)
		z=x/y;
	else if(y>=-1)
		z=asin(y);
	else
		z=sqrt(-y);
	return 0;
}