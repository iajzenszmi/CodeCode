//
// is_on_physical_device - returns a positive
// integer if 'fd' resides on a physical device,
// 0 if the file resides on a nonphysical or
// virtual device (e.g., on an NFS mount), and
// -1 on error./
#include <sys/stat.h>
#include <stdlib.h>
#include <stdio.h>
//int main(int fd)
int is_on_physical_device(int fd){
struct stat sb;
int ret;
ret = fstat(fd, &sb);
if (ret) {
perror ("fstat");
return -1;
}
printf("\n%d%d%ld", gnu_dev_major(sb.st_dev),ret,sb.st_dev);
return gnu_dev_major(sb.st_dev);
}
