//I am trying to write a small C++ program that opens a port, listens to the port for incoming messages and then parses the messages. The messages come in the format: ddddccccc where 'd' is digit and 'c' is a non-numeric character.
//I tried using sscanf for this to no success. Here is the code:
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>



int main(int argc, char *argv[])
{
 int sockfd, newsockfd, portno;
  socklen_t clilen;
 char buffer[256];
// struct sockaddr_in serv_addr cli_addr ;
 int n;
 FILE *ifp, *ofp;
 if (argc < 2) {
     fprintf(stderr,"ERROR, no port provided\n");
     exit(1);
 }
 sockfd = socket(AF_INET, SOCK_STREAM, 0);
 if (sockfd < 0){
 fprintf(stderr,"ERROR opening socket");
 exit(1);
}
 bzero((char *) &serv_addr, sizeof(serv_addr));
 portno = atoi(argv[1]);
 serv_addr.sin_family = AF_INET;
 serv_addr.sin_addr.s_addr = INADDR_ANY;
 serv_addr.sin_port = htons(portno);
 if (bind(sockfd, (struct sockaddr *) &serv_addr,
          sizeof(serv_addr)) < 0)
          error("ERROR on binding");
 listen(sockfd,5);
 clilen = sizeof(cli_addr);
 newsockfd = accept(sockfd,
             (struct sockaddr *) &cli_addr,
             &clilen);
 if (newsockfd < 0)
      error("ERROR on accept");
 bzero(buffer,256);
 n = read(newsockfd,buffer,255);
 if (n < 0) error("ERROR reading from socket");
 printf("Here is the message: %s\n",buffer);

 close(newsockfd);
 close(sockfd);

    int num=0;
    char a[32];
    memset (a, 0, sizeof (a));
//  sscanf( buffer, "%d%*[^_]", &num );
    sscanf( buffer, "%d%s", &num,a );
    printf ("NUM=%d, A=%s\n", num,a);

 return 0;
}

//The message that comes from reading the port:

// Here is the message: 999999abcd
