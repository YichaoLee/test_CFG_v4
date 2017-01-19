#include <stdio.h>
#include <math.h>

void test(int x, int y) {
	int path = 0;
	if (x > 0) {
		    // Changed from
		    // if (y == Math.pow(x, 2.0)) {
		    // to avoid double--int conversion (pdinges)
		if (y == x*x) {
			printf("Solved S0");
			path = 1;
		}
		else {
			printf("Solved S1");
			path = 2;
		}
		if (y > 8) {
			//if (x > 1 && y > 3) {
			if (path == 1)
				printf("Solved S0;S3");
			if (path == 2)
				printf("Solved S1;S3");
		}
		else {
			if (path == 1)
				printf("Solved S0;S4");
			if (path == 2)
				printf("Solved S1;S4");
		}
	}
}


	/**
	 * @param args
	 */
int main() {
	test(2,10);
	return 0;
}