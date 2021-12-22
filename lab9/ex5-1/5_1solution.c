#include <stdio.h>
#include <netdb.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>

int main(int argc, char **argv){
	
	if (argc != 2){
		printf("Error\n");
		return -1;
	}

	struct hostent *he = gethostbyname(argv[1]);

	if (he == NULL) {
		printf("Error\n");
		return -1;
	}
	
	int i = 0;
	
	while (he->h_addr_list[i] != NULL){
		
		struct in_addr *a = (struct in_addr*) h->h_addr_list[i];
		printf("%s\n", inet_ntoa(*a));
		i++;
	}
	
	return 0;
	
}
