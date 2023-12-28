#include <string.h>
#include <stdio.h>
int main(){
	char str1[] = "Ac";
	char str2[] = "Ac";
	int tmp = strcmp(str1, str2);
	printf("VAL: %d\n", tmp);
	return 1;
}
