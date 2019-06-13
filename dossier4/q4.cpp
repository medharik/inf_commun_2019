#include<stdio.h>
void Fonction(void)
{

 exit(0);
}
void Fonction2(void)
{

 exit(0);
}
void Fonction3(void)
{

 exit(0);
}
int main(void)
{
 int i;
 pid_t p1,p2,p3,r;
 if((p1=fork())==0)
 {
 printf("Création du processus 1…\n");
 Fonction();
 }
 if((p2=fork())==0)
 {
 printf("Création du processus 2…\n");
 Fonction2();
 }
 if((p3=fork())==0)
 {
 printf("Création du processus 3…\n");
 Fonction3();
 }

 for(i=0;i<3;i++)
 {
 q=wait();
 if(r==p1)
 printf("Mort du Fonction…\n");
 else if(r==p2)
 printf("Mort du Fonction2…\n");
 else if(r==p3)
 printf("Mort du Fonction3…\n");
 }
 return 0;
} 