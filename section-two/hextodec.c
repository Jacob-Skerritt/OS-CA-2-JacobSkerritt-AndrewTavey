#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
int main(int argc, char* argv[]){
  if(isatty(0)){
		printf("Please Enter some input > ");
  }
  char hex_val[5];
  char str[3];
  while(fgets(str, sizeof str, stdin) != NULL){
  	if (str[0] == '\n'){
    	continue;
  	}
    hex_val[0] = '0';
    hex_val[1] = 'x';
    hex_val[2] = str[0];
    hex_val[3] = str[1];
    hex_val[4] = '\0';
    long n = strtol(hex_val, NULL, 16);
    printf("%ld\n", n);
	}
  return 0;
}
