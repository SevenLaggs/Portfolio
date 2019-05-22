/*File:
guess.ch*/
//Declaration
int guesses=0;
int rnd;
int guess;
//Initialization/Calculation/Output
rnd=randint(1,10);
printf("\nGuess a number between 1 and 10.\nIf you guess correct you win.\nYou get 3 tries.%d\n\n",rnd);
scanf("%d",&guess);
guesses=guesses+1;
do{
    if(rnd!=guess){
        if(rnd>guess){
            printf("\nToo bad. The number is greater than \nyour last guess. Guess again.\n\n");
        }else{
            printf("\nToo bad. The number is less than \nyour last guess. Guess again\n\n");
        }
    scanf("%d",&guess);
    }
    else{
        
    }
    guesses=guesses+1;
    
}
while(rnd!=guess);
printf("\nGood job! it took you %d tries to guess correctly.\n\n",guesses);
