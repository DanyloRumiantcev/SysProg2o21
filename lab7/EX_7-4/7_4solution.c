#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <signal.h>
#include <stdbool.h>

sig_atomic_t Exit = 0;

void handler(int sigNum){
	Exit = 1;
}

int main() {
	
	pid_t pid = fork();
	int i = 0;
	
	if (pid == 0) {
		
		setsid();
		chdir("/");
		printf("%d\n", getpid());
		signal(SIGURG, handler);

		fclose(stdin);
		fclose(stdout);
		fclose(stderr);
		
		while(Exit == 0){
            sleep(100);
        }
		
	} else if (pid == -1) {
		printf("Error\n");
	}
	return 0;
}
