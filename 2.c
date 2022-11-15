#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main (){
  int a,b,x,y;
  pid_t p; 
  p = fork();
if(p == 0)
  {
  printf("i am child having id %d \n", getpid());
  printf(" Enter the number for addition \n");
  scanf("%d%d",&a,&b);
  printf("addition is %d",a+b);
  }
else {
wait(10);
    printf("i am parent having id %d \n", getpid());
  printf(" Enter the number for subtraction \n");
  scanf("%d%d",&x,&y);
  printf("substraction is %d",x-y);
  }
  }
