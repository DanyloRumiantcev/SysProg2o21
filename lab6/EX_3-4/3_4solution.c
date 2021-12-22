#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int fun(char *pid){
	
	int count = 1;
	FILE * fp;
	char * line = NULL;
	size_t len = 0;
	char sPid[16];
	char sPpid[16];
	
	fp = popen("cat /proc/[0-9]*/status 2>/dev/null", "r");
	
	while (getline(&line, &len, fp) > 0) {
		if (sscanf(line, "Pid:%s", sPid) == 1){
			getline(&line, &len, fp);
			sscanf(line, "PPid:%s", sPpid);
			if (!strcmp(pid, sPpid)){
				count++;
				fun(sPid);
			}
		} 
	}
	
	free(line);
	fclose(fp);
	
	return count;
}

int main (int carg, char **argv) {
	
	printf("%d\n", fun(argv[1]));
	
} 
