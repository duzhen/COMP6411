#include <stdio.h>

int main()
{
	int array[10];

	printf("Input 10 numbers divide by space\n");
	scanf("%d %d %d %d %d %d %d %d %d %d", &array[0], &array[1], &array[2], &array[3], &array[4], &array[5], &array[6], &array[7], &array[8], &array[9]);

	for (int i = 0; i < 9; i++)
	{
		for (int j = 0; j < 9 - i; j++)
		{
			if (array[j] > array[j + 1])
			{
				int temp = array[j];
				array[j] = array[j + 1];
				array[j + 1] = temp;
			}
		}
	}

	printf("Sorted list is:\n");

	for (int i = 0; i < 10; i++)
	{
		printf("%d ", array[i]);
	}
	printf("\n");
	return 0;
}
