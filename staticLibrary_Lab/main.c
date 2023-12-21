#include "Include/addition.h"
#include "Include/subtraction.h"
#include "Include/division.h"
#include "Include/modulus.h"
#include "Include/multiplication.h"
#include <stdio.h>

void main(){
	printf("Addition = %f\n",add(3,5));
	printf("Subtraction = %f\n",sub(3,5));
	printf("Division = %f\n",div(3,5));
	printf("Multiplication = %f\n",multiply(3,5));
	printf("Modulus = %d\n",mod(3,5));

}

