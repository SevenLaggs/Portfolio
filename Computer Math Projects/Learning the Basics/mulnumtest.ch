/*File:
mulnumtest.ch*/
//Declaration
int n1, n2, n3;
//Output/Initialization
//adding two random numbers
n1=randint(1,10);
n2=randint(1,10);
printf("\nTheir are two numbers; %d and %d. Input their sum.\n\n",n1, n2);
scanf("%d",&n3);
if(n1+n2==n3){
    printf("\nThat was easy, but good job.\n\n");
}
else{
    printf("\nWrong!\n\n");
};
