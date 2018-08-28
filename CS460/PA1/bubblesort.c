//
// Created by Clayton Franklin on 8/27/18.
//
#include <stdio.h>

int* bubblesort(int* array);

int main (void)
{
	int array[10];
	int* sorted = array;
	sorted = bubblesort(array);
}

int* bubblesort(int* array)
{
	int* i = array;
	while(*i != NULL)
	{
		++i;
	}

	return i;
}
