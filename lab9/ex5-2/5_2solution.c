#include <stdio.h>
#include <string.h>
#include <netdb.h>
#include <sys/socket.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <stdlib.h>

#define BUFSIZE 5000

struct sockaddr_in local;

int main(int argc, char ** argv){
	
	if (argc != 2){
		printf("Error\n");
		return -1;
	}
	
	int s = socket(AF_INET, SOCK_DGRAM, 0);

	inet_aton("127.0.0.1", &local.sin_addr);
	local.sin_port = htons(atoi(argv[1]));
	local.sin_family = AF_INET;
	
	bind(s, (struct sockaddr*) &local, sizeof(local));

	while(1) {
		char buf[BUFSIZE] = "\0";
        read(s, buf, BUFSIZE);
        if (strncmp(buf, "OFF\n", 4) == 0) {
			break;
        }
        else{
        	printf("%s\n", buf);
        }
	}
	close(s);

	return 0;
}
