#include <string.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
	if (argc ==2)
	{
		printf("Checking : %s\n",argv[1]);
		if (strcmp(argv[1],"BINARY-STRING-TEST01")==0)
		{
			printf("Basarili !!\n");
		}else{

			printf("Yanlis Key !!\n");
			 }
		
	}else{

		printf("Kullanimi : <Key>\n");

		}

}