#include <stdio.h>

int while_test(){
	int x = 10;
	while(x < 15){
		x += 1;
	}
	return x;
}


int main(){
	int i = 2;
	if( i < 3){
		printf("in if\n");
	}else{
		printf("in else\n");
	}
	while_test();
	return 0;
}
