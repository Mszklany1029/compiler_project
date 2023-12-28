#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct string {int length; unsigned char chars[1];};

struct string* createString(const char* content) {
    int length = strlen(content);

    // Allocate memory for the struct and the string content
    struct string* newString = (struct string*)malloc(sizeof(struct string) + length);

    // Check if memory allocation is successful
    if (newString != NULL) {
        newString->length = length;
        memcpy(newString->chars, content, length);
        newString->chars[length] = '\0';  // Null-terminate the string
    }

    return newString;
}

int stringCompare(struct string *s, struct string *t)
 {
	const unsigned char *sc = s->chars;
	const unsigned char *tc = t->chars;
	 while(*sc == *tc){
		if(*sc == '\0'){
			int tmp = *sc - *tc;
			printf("VAL: %d\n", tmp);
			return *sc - *tc;
		}
		sc = sc+1;
		tc = tc+1;
	 }
	 int tmp2 = *sc - *tc;
	 printf("VAL: %d\n", tmp2);
	 return *sc - *tc;
	/*do{
		
	}
	while()*/

	/*int i;
 	if (s==t){
		 return 1;
 	}else{

 	}

 if (s->length!=t->length) return 0;
 for(i=0;i<s->length;i++) if (s->chars[i]!=t->chars[i]) return 0;
 return 1;*/

 }

int main(){
	struct string *s = createString("ac");
	struct string *t = createString("ac");
	stringCompare(s, t);
	return 1;
}
