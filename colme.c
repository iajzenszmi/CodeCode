#include <stdio.h>
#include <stdlib.h>

#define ANSI_COLOR_RED     "\x1b[31m"
#define ANSI_COLOR_GREEN   "\x1b[32m"
#define ANSI_COLOR_YELLOW  "\x1b[33m"
#define ANSI_COLOR_BLUE    "\x1b[34m"
#define ANSI_COLOR_MAGENTA "\x1b[35m"
#define ANSI_COLOR_CYAN    "\x1b[36m"
#define ANSI_COLOR_RESET   "\x1b[0m"

int main (int argc, char const *argv[]) {

  printf(ANSI_COLOR_RED     "Ian Martin Ajzenszmidt"     ANSI_COLOR_RESET "\n");
  printf(ANSI_COLOR_GREEN   "Ian Martin Ajzenszmidt"   ANSI_COLOR_RESET "\n");
  printf(ANSI_COLOR_YELLOW  "Ian Martin Ajzenszmidt"  ANSI_COLOR_RESET "\n");
  printf(ANSI_COLOR_BLUE    "Ian Martin Ajzenszmidt!"    ANSI_COLOR_RESET "\n");
  printf(ANSI_COLOR_MAGENTA "Ian Martin Ajzenszmidt" ANSI_COLOR_RESET "\n");
  printf(ANSI_COLOR_CYAN    "Ian Martin Ajzenszmidt!"    ANSI_COLOR_RESET "\n");

  return 0;
}
