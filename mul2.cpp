#include <iostream>
#include <thread>
#include <unistd.h>
void start1();
using namespace std;

pthread_mutex_t t_mutex = PTHREAD_MUTEX_INITIALIZER;


void* showNumber (void* number) {
    //lock access for other threads
    pthread_mutex_lock(&t_mutex);
    
    sleep(1);
    cout << *(int *)number << " ";
    
    pthread_mutex_unlock(&t_mutex);
    return number;
}

void start1() {
	printf("\n%s","started");
    //start ten threads
    for (int i = 1; i <= 10; i++) {
        int *number = new int;
        *number = i;
        pthread_t t1;
        pthread_create(&t1, NULL, showNumber, number);
        printf("\n%s%d"," number = ",number);        printf("\n%s%d"," *number = ",
        *number);
    }    
}
int main(){
 start1();
}

//result without lock: 31254678910,,,,,,,, ,,
//result with lock: 1, 2, 3, 4, 6, 5, 7, 8, 9, 10,