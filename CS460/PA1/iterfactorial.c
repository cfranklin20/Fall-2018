//
// Created by Clayton Franklin on 8/28/18.
//

#include <stdio.h>

int factorial(int number);

int main(void)
{
	int fact = 0;
	int result = 0;
	printf("Enter a whole number: ");
	scanf("%d",&fact);
	result = factorial(fact);
	printf("The factorial of %d is %d.",fact,result);
}

int factorial(int number)
{
	int temp = 1;
	for (int i = 1; i <= number; i++)
	{
		temp *= i;
	}
	return temp;
}