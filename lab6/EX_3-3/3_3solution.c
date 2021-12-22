#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define STR_BUFF 512

int main(int argc, char **argv) {
	
	int pid = 0;
	char tmp_n[STR_BUFF] = {0};
	char tmp_p[STR_BUFF] = {0};

	if(argc < 2) {
		exit(EXIT_SUCCESS);
	}

	pid = atoi(argv[1]);

	printf("%d\n", pid);

	while(pid > 1) {
		sprintf(tmp_n, "/proc/%d/status", pid);
		FILE *fd = fopen(tmp_n, "r");
	
		if(fd) {
			while(!strstr(tmp_p, "PPid:")) {
				fgets(tmp_p, STR_BUFF, fd);
			}
			pid = atoi(strstr(tmp_p, "\t") + 1);
			printf("%d\n", pid);
			tmp_p[0] = 0;
			fclose(fd);
		} else {
			exit(EXIT_FAILURE);
		}
	}

	return 0;
  
}
