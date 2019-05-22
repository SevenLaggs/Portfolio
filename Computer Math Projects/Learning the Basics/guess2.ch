/*File:
guess.ch*/
//Declaration
int guesses=0;
int rnd;
int guess;
//Initialization/Calculation/Output
rnd=randint(1,10);
printf("\nGuess a number between 1 and 10.\nIf you guess correct you win.\nYou get 3 tries.%d\n\n",rnd);

do{
    scanf("%d",&guess);
    guesses=guesses+1;
    if(rnd!=guess){
        if(rnd>guess){
            printf("\nToo bad. The number is greater than \nyour last guess. Guess again.\n\n");
        }else{
            printf("\nToo bad. The number is less than \nyour last guess. Guess again\n\n");
        }
    }
}
while(rnd!=guess && guesses<3); 
if(guess==rnd){
printf("\nCongrats you win!\n\n");
}
else{
    printf("\nToo bad. You are out of guesses. The number was %d\n\n",rnd);
}
