/*File:
icecream.ch*/
//Declarations
double cost=.45, discount=.90, tax=1.085, perOff, sTax, total, sTotal, amount;
int buy;
//Calculation
perOff=(1-discount)*100;
sTax=(tax-1)*100;
//Output
printf("\nIcecream costs $%.2lf per oz. Tax here is %.2lf%%. \nToday we have a %.2lf%% discount on all flavors. \nHow much will you buy?\n\n",cost,sTax,perOff);
scanf("%d",&buy);
amount=cost*buy;
sTotal=cost*buy*discount;
total=sTotal*tax;
printf("\nPURCHASE_____________\n%d oz. icecream: $%.2lf \nDiscount        -%.0lf%% \nSubtotal:       $%.2lf \nTax:            %.1lf%% \n_____________________\nTotal:          $%.2lf\n\n", buy, amount, perOff, sTotal, sTax, total);
