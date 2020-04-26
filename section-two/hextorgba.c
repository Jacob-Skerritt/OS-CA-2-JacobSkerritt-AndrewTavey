#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <math.h>
int main(int argc, char* argv[]){

	if(isatty(0)){
  	printf("Please Enter some input > ");
  }

  char str[11];

  while(fgets(str, sizeof str, stdin) != NULL){
  	char hex_val[5];
    int r,g,b;
    double a = 1;
    hex_val[0] = '0';
    hex_val[1] = 'x';
    unsigned int i = 1;

		while(str[i] >= ' '){
    	for(int j = 0; j < 2; j++){
      	hex_val[j+2] = str[i];
        i++;
			}

     	hex_val[4] = '\0';
     	long n = strtol(hex_val, NULL, 16);

			if(i < 4){
     		r = n;
     	}else if(i < 6){
     		g=n;
     	}else if (i < 8){
     		b=n;
     	}else if ( i < 10){
     		a = (double) n;
     		a = a/255;
     	}
     }
     printf("rgba(%d, %d, %d, %.2f)\n",r,g,b,a);
   }
   return 0;
}
