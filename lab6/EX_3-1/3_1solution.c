#include <stdio.h>
#include <sys/types.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>

int main() {
	
	pid_t my_pid = getpid();
	char tmp[256] = { 0 };
	sprintf(tmp, "/proc/%d/status", my_pid);

	FILE *sfp = fopen(tmp, "r");
	
	if (!sfp) {
		printf("unable to read file\n");
	}

	const char *str_id = "ppid:\t";
	const int str_id_len = strlen(str_id);

	while(fgets(tmp, sizeof(tmp) - 1, sfp)) {
		if (!strncasecmp(str_id, tmp, str_id_len)) {
			sscanf(tmp + str_id_len, "%s", tmp);
			printf("%s\n", tmp + str_id_len);
		}
	}
	return 0;
}
