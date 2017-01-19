#include <stdio.h>
#include <assert.h>








void abort1(){
	printf("Fuck!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
}
	
	void test(int x, int y) {
		if (x*x*x > 0){
			if(x>0 && y==10)
				abort1();
		} else {
			if (x>0 && y==20)
				abort1();
		}
	}


	/**
	 * @param args
	 */
	int main() {
		// TODO Auto-generated method stub
		test(2,10);
		return 0;
	}
