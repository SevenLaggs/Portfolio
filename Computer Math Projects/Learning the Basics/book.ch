/*File:
book.ch*/
//Declarations

//the price of one book
double bookPrice=19.99;

//what to multiply to by add tax
double taxTotal=1.0825;

//total price
double price;

//number of books bought
int books=4;

//actual price by percent
double tax;
//Calculations

//How much do all the books cost
price=(books)*(bookPrice)*(taxTotal);
tax=((taxTotal)-1)*100;

//Output
printf("\nOne book costs $%.2lf. I live in California, where sales tax is %.2lf. I am buying %d books. The final cost is $%.2lf\n\n",bookPrice,tax,books,price);
