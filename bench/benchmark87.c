#include <stdio.h>







void commitEarly(int a, int b) {
    int c = a * b;
    if (b > 2 && b == c) {
      printf("Solved early commitment");
    }
}


	/**
	 * @param args
	 */
int main() {
    int a = 1, b = 3;
    commitEarly(a, b);
	printf("");
	return 0;
}
