/*
* is_on_physical_device - returns a positive
* integer if 'fd' resides on a physical device,
* 0 if the file resides on a nonphysical or
* virtual device (e.g., on an NFS mount), and
* -1 on error.
*/
#include <stdio.h>
#include <stdlib.h>

int void is_on_physical_device (int fd)
{
struct stat sb;
int ret;
ret = fstat (fd, &sb);
if (ret) {
perror ("fstat");
return -1;
}
return gnu_dev_major (sb.st_dev);
}                                                                                                                             
