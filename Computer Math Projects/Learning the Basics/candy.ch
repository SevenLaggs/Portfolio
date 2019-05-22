/*File:
yogurt.ch*/
//declaration
double cost;
double change;
double price=2;
int CandyBars=5;
double cash=10;
//calculations
cost=(CandyBars)*(price);
change=(cash)-(cost);
//Output
printf("\nThe cost of buying %d KitKats is $%.2lf.\nIf I give $%.2lf I will get back $%.2lf\n\n",CandyBars,cost,cash,change);
