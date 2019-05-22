/*File:
rent2.ch*/
//Declaration/Initialization
double price=4.99, sTotal, tax=8.5, T, total,TAmount;
int rent=3;
//Calculation
sTotal=price*rent;
TAmount=tax/100*price*rent;
total=sTotal+TAmount;
//Output/Calculation
printf("\n----The receipt for renting %d movies ---\nSubtotal:   $%.2lf\nTax:    $%.2lf\nTotal:    $%.2lf\nThank you.\n\n", rent, sTotal, TAmount, total);
