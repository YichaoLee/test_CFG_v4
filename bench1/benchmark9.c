#include <math.h>
#include <stdio.h>

int main(){
	double T;double a;
	double b;double N;
	double p;double V;
	if(T >= 300 && T <= 300 && a >= 0.401 && a <= 0.401 && b >= 42.7e-6 && b <= 42.7e-6 && N >= 1000 && N <= 1000 && p >= 3.5e7 && p <= 3.5e7 && 0.1 <= V && V <= 0.5) {
		double k = 1.3806503e-23;
		double res=(p + a * (N / V) * (N / V)) * (V - N * b) - k * N * T;
		if(4303229.99 >= res || res >= 16739009.21)
			printf("Solved 75");
	}
		
	return 0;
}
