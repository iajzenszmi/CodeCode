#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <signal.h>
#include <unistd.h>
#include <termios.h>
  
bool cont = true;
  
void sigHandler(int sig) {
    if (sig == SIGINT)
        cont ^= true;
    signal(SIGINT, sigHandler); // reinstall handler
}
  
int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Wrong number of arguments.\n");
        return EXIT_FAILURE;
    }
  
    signal(SIGINT, sigHandler);
  
    struct termios oldTerm, newTerm;
    tcgetattr(1, &oldTerm);
    newTerm = oldTerm;        // copy old terminal settings
    newTerm.c_lflag &= ~ECHO; // then make changes
    tcsetattr(1, TCSANOW, &newTerm);
  
    printf("Initiating Countdown.\n");
    int num = atoi(argv[1]);
  
    while (true) {
        while (cont && num > 0) {
            printf("%d\n", num--);
            sleep(1);
        }
  
        if (num <= 0)
            break;
  
        printf("pausing\n");
        while (!cont) {
            sleep(1);
        }
    }
  
    tcsetattr(1, TCSANOW, &oldTerm);
    printf("Done.\n");
    return 0;
}
