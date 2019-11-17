#include <stdio.h>
#include "myMath.h"

int main() {
	printf("Please inset a real number\n");
	double x;
	scanf_s("%lf", &x);
	double ans = Exp(x) + Pow(x, 3) - 2;
	double ans1 = mul(x, 3) + mul(Pow(x, 2), 2);
	double ans2 = (mul(4, Pow(x, 3))) / 5 + mul(-2, x);
	printf("e^x+x^3-2= %lf", ans);
	printf("\n");
	printf("3x+2x^2= %lf", ans1);
	printf("\n");
	printf("(4x^3)/5-2x= %lf", ans2);
}
