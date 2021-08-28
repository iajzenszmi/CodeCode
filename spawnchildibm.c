#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/* This is a sample child program used by spawn.  This program will
 * work stand-alone as well as from spawn or fork/exec. */

extern char ** environ; /* External used to access the environment
			   directly instead of using getenv */

void main(int argc, char *argv[]) {

	char *e, **env=environ;  /* Used to step through the environment
				  * to write out to file. */
	char buf[256]={0};
	FILE *fp=fopen("spawntest.out","w");
 	int i;

	/* Print out the environment variables */
	i=0;
	fprintf(fp, "Environment:\n");
	while(e=env[i++])  fprintf(fp, "%s\n", e);
	fprintf(fp, "\n\n");

	/* Just to prove getenv works */
	fprintf(fp, "TEST_ENV envvar = %s", getenv("TEST_ENV"));

	/* Print out the command line arguments */
	i=0;
	fprintf(fp,"Args:\n");
	while(e=argv[i++]) fprintf(fp,"%s\n", e);
	fprintf(fp, "\n\n");
	
	/* Print out what was sent on stdin */
	fprintf(fp, "Child/parent\n");
	if(!gets(buf)) {
		ferror(stdin);
		exit(-1);
		}
	fprintf(fp, "child from parent: %i bytes,[%s]\n", strlen(buf), buf);

	/* Send something to stdout */	
	printf("nothing");

	fclose(fp);
	exit(0);
}
