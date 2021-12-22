#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>

int c1 = 0;
int c2 = 0;
int f = 0;

void usr_handler(int signalno) {
	
	if (signalno == SIGUSR1){
		c1++;
	}
	
	if (signalno == SIGUSR2){
		c2++;
	}
}

void term_handler(int signalno) {
	printf("%d %d\n", c1, c2);
	f++;
}

int main()
{
	int count1 = 0;
	int	count2 = 0;
	
	signal(SIGUSR1, usr_handler);
	signal(SIGUSR2, usr_handler);
	signal(SIGTERM, term_handler);
	
	while(1){
		if (f > 0){
			break;
		}
	}
	return 0;
}
