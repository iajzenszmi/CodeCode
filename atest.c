
//I've been trying to figure out why I keep getting a segmentation default error in my code. It's supposed to receive a filename, read from it and parse the data into 3 different arrays. Any ideas?
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #define LINESIZE 80
    #define data 98
//    #define filename ATEST
    int main(){
//    FILE *data;
    char line[LINESIZE];

  //  data = fopen(filename, "r");
    if(data == NULL){
        printf("error in accessing file specified \n");
        exit(EXIT_FAILURE);
    }
    printf("access success\n");

    int i = 0;

 //   while(fgets(line, sizeof line, data) != NULL){
       while(data != NULL){
        i++;
    }
    printf("Number of entries: %i  \n", i);

 //   fclose(data);
    printf("1\n");
 //   data = fopen(filename, "r\n");
    printf("1\n");

    char* transMAC[i];
    char* recMAC[i];
    int bytes[i];
    int j = 0;
 //   while(fgets(line, sizeof line, data) != NULL){
      while (data != NULL){
        strtok(line, "\t");
        strcpy(transMAC[j],strtok(NULL, "\t"));
        strcpy(recMAC[j],strtok(NULL, "\t"));
        bytes[j] = atoi(strtok(NULL, "\t"));
        j++;
    }

    for(int k = 0; k < i; k++){
        printf("%s   ", transMAC[k]);
        printf("%s   ", recMAC[k]);
        printf("%i   \n", bytes[k]);
    }


}

