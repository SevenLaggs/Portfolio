/*File:
driverage.ch*/
//Declaration
int age;
//Calculation/Output
printf("\nHow old are you?\n\n");

//user enters age
scanf("%d", &age);

//Is the user old enough to drive
if(age>=16){
    printf("\nYou are old enough to drive.\n\n");
}
else{
    printf("\nYou are not old enough to drive.\n\n");
}
