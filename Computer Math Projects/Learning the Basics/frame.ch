/*File:
frame.ch*/
//Declaration

double hours, height, width, priceF=3.75,
priceG=8.35, priceH=16, tax=8.5,sTax=tax/100+1,
frame, glass,sTotal, total,taxAmount;
//Initialization/Calculation

//what are the dimentions of the frame
printf("\nWhat is the height of the frame?\n\n");
scanf("%lf", &height);
printf("\nNow, what is the width of the frame?\n\n");
scanf("%lf", &width);
printf("\nAnd how long did it take to make?\n\n");
scanf("%d", &hours);

//calculate price of glass, frame, and total based on dimentions
frame=(2*(width+height))*priceF;
glass=width*height*priceG;
//sub total
sTotal=glass+frame+(priceH*hours);
//after tax
total=sTax*sTotal;
// price of tax
taxAmount=total-sTotal;
printf("\nPURCHASE_____________\n%d ft. Frame:      $%.2lf \n%d sq. ft. Glass:  $%.2lf \nSubtotal:         \
$%.2lf \nTax:              $%.2lf \n_____________________\nTotal:            $%.2lf\n\n",2*(width+height), frame, \
width*height, glass, sTotal, taxAmount, total);
