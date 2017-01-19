#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>

double q[2][4] = {{0,0,0,0},{1,1,1,1}};
int p = 1;
int i[2] ={3,0};
void mm(int x);
struct test{
	int a;
	int *b;
};

void add(struct test *x){
	x[1].a+=1;
}

void dive(struct test *x){
	x->a--;
}

struct test t1={1,i};
    struct test e[2]={{1,i},{1,i}};

int main(){
    add(e);
    dive(&e[0]);
	struct test *qe=&t1;
	int a[4][4];
	a[1][2]=1;
	struct test *pe=&e[1];
	int ya=a[1][1];
	int *gg=&ya;
	pe->a=5;
	qe->a=a[1][2]+e[1].a+e[0].b[1];
	assert((qe->a)==(pe->a)+1);
    return 0;

}
void mm(int x){
	if(x == 1)
		printf("wwwww1wwwwwwwwww\n");
	else{
		printf("qqqqqqqqqqqqqqqq\n");}
	return;}


