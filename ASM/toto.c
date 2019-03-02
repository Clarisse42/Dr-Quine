#include <stdio.h>
#include <stdlib.h>

void ft_bzero(void *a, size_t n);

int main()
{
	char *test = malloc(15);
	snprintf(test, 15, "AAAAAAAAAAAAAAA");
	printf("%s\n", test);
	ft_bzero(test, 15);
	printf("%s\n", test);
	return 0;
}
