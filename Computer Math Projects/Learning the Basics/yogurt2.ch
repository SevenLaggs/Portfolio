/*File;
yogurt2.ch*/
//Declaration
double yogurt=.39;
double tax=1.0825;
double sTax=(tax-1)*100;
int buy;
double stotal;
double total;
//Calculations
printf("\nFrozen yogurt costs $%.2lf/oz. How many oz. do you want to buy?\n\n",yogurt);
scanf("%d",&buy);
stotal=buy*yogurt;
total=stotal*tax;
printf("\n%d oz. yogurt\ntax:     |%.2lf%% |\nSubtotal:|$%.2lf.|\nTotal:   |$%.2lf |\nHave a nice day!\n",buy,sTax,stotal,total);
