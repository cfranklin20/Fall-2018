//
// Created by Clayton Franklin on 8/27/18.
//
#include <stdio.h>

int* bubblesort(int* array);

int main (void)
{
	int array[10] = {1, 4, 5, 2, 8, 12, 3, 97, 14, 9};
	int* sorted = array;
	sorted = bubblesort(array);
	for (int i = 0; i < 9; i++)
	{
		printf("%d ",array[i]);
	}

	return 0;
}

int* bubblesort(int* array)
{
	for (int i = 0; i < 8; i++)
	{
		for ( int j = 0; j < 8; j++ )
		{
			if ( array[j] > array[j + 1] )
			{
				int temp = 0;
				temp = array[j + 1];
				array[j + 1] = array[j];
				array[j] = temp;
			}
		}
	}

	return array;
}
