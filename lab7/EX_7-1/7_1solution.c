#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <ctype.h>
#include <string.h>

int main(int argc, char* argv[])
{
	FILE *str;
	char buf[1024];
	sprintf(buf, "%s %s", argv[1], argv[2]);
	str = popen(buf, "r");
	
	if (str == NULL) {
		printf("Error\n");
		exit(0);
	}
	
	char c;
	int cnt = 0;
	
	while ((c = fgetc(str)) != EOF) {
		if (c == '0') {
			cnt++;
		}
	}
	
	printf("%d\n", cnt);
	
	if (pclose(str) == -1) {
		printf("Error\n");
		exit(0);
	}
	
	return 0;
	
}
