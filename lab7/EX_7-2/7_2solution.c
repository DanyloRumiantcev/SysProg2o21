#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>

int rchnl(int fd, char* buf, size_t size) {
    int c = read(fd, buf, size - 1);
    buf[c] = 0;
	
    return c;
}

int isConnect(int* buf, size_t size) {
    int ret = 0;
    int i = 0;
	
    for(i = 0; i < size; ++i) {
        ret |= buf[i];
    }
	
    return ret;
}

int main(){
	
    int fds[2];
	
	fds[0] = open("in1", O_RDONLY|O_NONBLOCK)
	
    if(fds[0] == -1) {
        perror("Open: in1");
        return 1;
    }
	
	fds[1] = open("in2", O_RDONLY|O_NONBLOCK)
	
    if(fds[1] == -1) {
        perror("Open: in2");
        return 1;
    }

    fd_set readfds, tmpfds;
    FD_ZERO(&readfds);
    FD_ZERO(&tmpfds);
    FD_SET(fds[0], &readfds);
    FD_SET(fds[1], &readfds);

    int read_res[2] = {0, 0};
    int total = 0;
    char buf[100];

    do {
		
        int i = 0;
        tmpfds = readfds;
		
        if(-1 == select(fds[1]+1, &tmpfds, NULL, NULL, NULL)) {
            perror("select");
            return 2;
        }
		
        for(i = 0; i < 2; ++i) {
            if(FD_ISSET(fds[i], &tmpfds)) {
                read_res[i] = rchnl(fds[i], buf, 100);
                if(read_res[i] != 0) {
                    total += atoi(buf);
                } else {
                    FD_CLR(fds[i], &readfds);
                }
            }
        }
		
    } while(isConnect(read_res, 2));
	
    printf("%d\n", total);
    fflush(stdout);

    return 0;
}
