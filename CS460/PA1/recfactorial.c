//
// Created by Clayton Franklin on 8/28/18.
//

#include <stdio.h>

int factorial(int number);

int main(void)
{
	int fact = 0;
	printf("Enter a whole number: ");
	scanf("%d",&fact);
	int result = 0;
	result = factorial(fact);
	printf("The factorial of %d is %d",fact,result);
}

int factorial(int number)
{
	if (number >= 1)
		return number * factorial(number - 1);
	else
		return 1;
}