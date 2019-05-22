/*File:
money.ch*/
//Declarations
double uMoney,oMoney,total;
//Output/Initialization
printf("\nHow much money do you have?\n\n");
scanf("%lf",&uMoney);
printf("\nYou have $%.2lf. How much money does your neighbor have?\n\n",uMoney);
scanf("%lf",&oMoney);
total=(uMoney)+(oMoney);
printf("\nYour neighbor has $%.2lf. You both have $%.2lf.\n\n",oMoney,total);
