/*File:
staggsDevon.ch*/
//Declaration
int x=0;//condition to continue
//user
int looked=0;//if true you may not look again
int find;//what you find
int uAtkChance;//random chance for a users attack to hit
int uDMG;//users randomely generated attack damage
int uHP;//players current health
int uMaxHP=4*(randint(6,8));//users maximum possible health
//enemy
int enemy;//What enemy will appear
int eAtkChance;//random chance for a enemies attack to hit
int eDMG;//enemies randomely generated attack damage
int eHP;//enemy's curerent HP
int eMaxHP;//enemy's MaxHP
int fleeChance;//chance for a flee to be successful
//misc. integers
string_t choice;//choice the player inputs
string_t uName, name1;//name of player and character
//reusable functions
//enemy's stats

void stats(){
    printf("||HP:  %6d/%6d ||\n", uHP, uMaxHP);
}

void eStats(){
    if(enemy==1){
        fleeChance=randint(1,5);
        eAtkChance=randint(1,5);
        eMaxHP=14;
        eDMG=randint(2,4);
    }
    if(enemy==2){
        fleeChance=randint(1,3);
        eAtkChance=randint(1,3);
        eMaxHP=23;
        eDMG=randint(4,6);
    }
    if(enemy==3){
        fleeChance=randint(1,6);
        eAtkChance=randint(1,3);
        eMaxHP=25;
        eDMG=randint(3,7);
    }
    if(enemy==4){
        fleeChance=0;
        eAtkChance=randint(1,2);
        eMaxHP=50;
        eDMG=randint(4,8);
    }
    printf("ENEMY:\n||HP:  %6d/%6d ||\n", eHP, eMaxHP);
}

//attack phase
void action(){
    printf("Will you ''Fight'' or ''Flee''?\n");
    scanf("%s",&choice);
    if(choice=="Fight"||choice=="Flee"){
        if(choice=="Fight"){
            uDMG=randint(5,8);
            uAtkChance=randint(1,2);
            if(uAtkChance==1){
                eHP=eHP-uDMG;
                printf("HIT! You did %d damage!",uDMG);
            }else{
                printf("You missed. Try again.");
            }
        }else{
            if(fleeChance==1){
                printf("SUCCESS! You fled!");
                eHP=0;
            }else{
                printf("FAILED! You did not flee!");
            }
        }
        if(eHP>0&&uHP>0&&fleeChance!=1){
            if(eAtkChance==1){
                uHP=uHP-eDMG;
                printf("\nYour enemy hit you. You take %d damage.\nYOU:  ",eDMG);
            }else{
                printf("\nYour enemy missed. You took no damage.\nYOU:  ");
            }
            stats();
        }
    }else{
        printf("\nPlease enter one of the quoted entries\n(Make sure you have proper capitolization)\n\n");
    }
}

void fight(){
    if(enemy==1){
        printf("You hear a rustling in the grass. You decide to investigate.\nAs you approach, a rat about the size of a shoebox jumps at you.");
        printf("\nIt looks hungry and likely wont leave you alone.\n\n");
        eMaxHP=14;
        eHP=eMaxHP;
        do{
            eStats();
            action();
        }while(uHP>0&&eHP>0);
    }
    if(enemy==2){
        printf("\nYou hear Grunting sounds. You decide\nto investigate. As you approach, a rotten, fleshy, human-like");
        printf("\nceature stands up and turns around, twitching like crazy. It\nlooks dumb, you might be able to outsmart it.\n");
        eMaxHP=23;
        eHP=eMaxHP;
        do{
            eStats();
            action();
        }while(uHP>0&&eHP>0);
    }
    if(enemy==3){
        printf("You hear a growling sound behind you. You turn around to find a \nwolf, snarling and angry.");
        printf("\nIt looks hungry and likely wont leave you alone.");
        eMaxHP=25;
        eHP=eMaxHP;
        do{
            eStats();
            action();
        }while(uHP>0&&eHP>0);
    }
    if(enemy==4){
        printf("The girl is screaming. It's almost to loud to handle. You try to reach for\nyour ears, but find it impossible to move.");
        printf("\nShe lunges at you.");
        eMaxHP=50;
        eHP=eMaxHP;
        do{
            eStats();
            action();
            if(uHP<=0){
                printf("The light fades from your eyes slowely. You feel your life slipping away.\nJust as you are about to give up you hear");
                printf("\na shout followed by the same scream of the creature. You feel a sharp\npain in your side and sit up suddenly to find");
                printf("\na needle stabbed into you. \"You'll feel better soon\" says a voice.\nYou look around to find no one there.");
                uMaxHP=40;
                uHP=uMaxHP;
                eHP=0;
            }
        }while(uHP>0&&eHP>0);
        if(uHP<=0){
            printf("YOU DIED");
            exit(1);
        }else{
            printf("Success");
            choice="Look around";
        }
    }
}

void look(){
    find=randint(0,3);
    if(find==0){
        printf("\nYou found nothing\n");
    }
    if(find==1){
        printf("\nMaxHP up\n");
        uMaxHP=uMaxHP+4;
        stats();
    }
    if(find==2){
        printf("\nCurrent HP up.\n");
        if(uHP==uMaxHP){
            printf("You are already at max HP. Increasing MaxHP instead.\n");
            uMaxHP=uMaxHP+4;
            if(uHP>uMaxHP){
                uHP=uMaxHP;
            }
            stats();
        }else{
            uHP=uHP+4;
            stats();
        }
    }
    if(find==3){
        enemy=randint(1,3);
        fight();
    }
}

//begining to adventure

void setting(){
    do{
        uHP=uMaxHP;
        printf("\nWhat is your name adventurer?\n\n");
        scanf("%s", &uName);
        printf("\n%s, is this correct?", uName);
        do{
            printf("\n''yes''          ''no''\n\n");
            scanf("%s", &choice);
            if(choice=="/godmode"){
                uDMG=100000;
                uHP=100000;
                x=1;
            }else{
                if(choice=="yes"||choice=="no"){
                    x=1;
                }else{
                    printf("\nPlease enter one of the quoted entries\n(Make sure you have proper capitalization)\n\n");
                }
            }
        }while(x!=1);
        if(choice=="no"){
            x=0;
        }else{
            x=1;
        }
    }while(x!=1);
    x=0;
}

void intro(){       
    printf("\nYou are walking along a crumbling highway bridge. You see a ladder down to the river below with clear \nrunning water.");
    printf("You also see a small, thrown together, wooden platform leading onto the \nrest of the bridge.");
    printf("You do not see anyone in either direction. Where will you go?\n");
    do{
        printf("''Ladder''          ''Wooden platform''          ''Look around''\n\n");
        scanf("%s", &choice);
        if(choice=="Ladder"||choice=="Wooden platform"||choice=="Look around"){
            x=1;
        }else{
            printf("\nPlease enter one of the quoted entries\n(Make sure you have proper capitalization)\n\n");
        }
        if(choice== "Look around"){
            if(looked==1){
                printf("There is nothing here");
            }else{
                look();
            }
            looked=1;
        }
    }while(x!=1);
    x=0;
}

//Traveled on wooden platform

void platform(){
    printf("You decided to travel across the platform. It gives a little\nunder your weight, but you make it across without a problem.");
    printf("\nOn the other side you can see a small shack with a little \ndirt plot with crops growing in it. Past the shack you notice");
    printf("\nyou are almost across the bridge. You decide to collect the\ncrops before continuing to get some food.");
    printf("\n''Get crops''\n\n");
}

//Traveled down ladder

void ladder(){
    printf("You climb down the ladder. It was a long way, but it feels great\nto have your feet on the soft soil after hours of walking on concrete.");
    printf("\nYou look about, First you notice that off in the distance you \nsee someone leaning over behind a rock. They almost look like they");
    printf("\nare crying. In the other direction you see a cabin on a hill.\nThere is smoke coming from the chimney. You decide to check on the");
    printf("\nperson before doing anything else");
    printf("\n''Check person''\n\n");
}

//Looked around on bridge
void lookIntro(){
    printf("\nWhile looking around, you tripped and fell down a manhole. It wasn't a \nlong fall to the bottom. They must not have much room this high up");
    printf("\nThe inside is dark. In the distance you swear you hear a call\n''%s'' quiet first, then loader, ''%s!''. You follow the sound reluctantly.", uName, uName);
    printf("\nYou are unsure what you'll find.\n''Continue''\n\n");
}

//Getting crops at shack
void getCrops(){
    printf("You begin to pick some of the crops. You see corn and some berries that will\ncome in handy later. As you reach out to grab some, you hear a");
    printf("\ngrunting sound come from the shack behind you. Turning around, you see an\nalmost human creature of rotting flesh and dried blood. A deep ");
    printf("\nchill runs up your spine. Obviously this was a person at one point. The\n creature looks at you for a while, and then begins to run at you");
    enemy=2;
    fight();
    do{
        x=0;
        printf("What will you do next?\n");
        printf("\"Continue on bridge\"          \"Stay in shack\"          \"Look around\"\n");
        scanf("%s", &choice);
        if(choice=="Continue on bridge"||choice=="Stay in shack"||choice=="Look around"){
            x=1;
        }
    }while (x!=1);
}
//Checking person at river
void checkPerson(){
    printf("You walk toward the person. \"Hi,\" you say.\"My names %s\"... No response.\nYou decide to step closer. You notice they are not,", uName);
    printf("\nin fact, crying. Instead, they are leaned over an old, rotting corpse of \nsome sort of animal. You hold back your vomit. There");
    printf("\nis no way this thing is human.");
    enemy=2;
    fight();
    do{
        x=0;
        printf("What will you do next?\n");
        printf("\"Go to cabin\"          \"Fish in river\"          \"Follow river\"\n");
        scanf("%s", &choice);
        if(choice=="Go to cabin"||choice=="Fish in river"||choice=="Follow river"){
            x=1;
        }
    }while (x!=1);
}
//Folowing voice in sewer
void continueSewer(){
    printf("You walk along the sewer, keeping your head as far from the nearest stench as\npossible. The voice had stopped calling your name by");
    printf("\nnow, and you were beginning to wonder if you really heard anything. Suddenly\nas you turn a corner, You see the figure of a girl,");
    printf("\nfloating in the air. The girl is covering her face, and looks as though she\nis crying. You aprouch without thinking, almost as");
    printf("\nif you are being drawn in. You realise you have no control over your legs.\n You keep walking toward her. As you get close she stops");
    printf("\nweaping and throws her hands down to her sides. Her hair sticks straight out\nin all directions as she begins to scream a chilling");
    printf("\nscream. She looks up at you, light streaming from her eyes like water from a\nbroken fire hydrant.");
    enemy=4;
    fight();
    do{
        x=0;
        printf("What will you do next?\n");
        printf("\"Look for stranger\"          \"Find exit\"          \"Check girl\"\n");
        scanf("%s", &choice);
        if(choice=="Look for stranger"||choice=="Find exit"||choice=="Check girl"){
            x=1;
        }
    }while (x!=1);
}
    
//Running program
int main(){
    setting();
    stats();
    intro();
    //Branch 1
    if(choice== "Wooden platform"){
        platform();
    }
    if(choice== "Ladder"){
        ladder();
    }
    if(choice=="Look around"){
        lookIntro();
    }
    //Branch 2
    do{
        scanf("%s", &choice);
        if(choice=="Get crops"||choice=="Check person"||choice=="Continue"){
            x=1;
        }else{
            printf("\nPlease enter one of the quoted entries\n(Make sure you have proper capitalization)\n\n");
        }
    }while(x!=1);
    x=0;
    if(choice=="Get crops"){
        getCrops();
    }
    if(choice=="Check person"){
        checkPerson();
    }
    if(choice=="Continue"){
        continueSewer();
    }
    //Final section
    //On bridge
    if(choice=="Continue on bridge"){
        printf("You kept walking along the bridge, following on until you are finally off of it.\n It feels nice to once again be back on familiar ground");
        printf("\nYou think about the creature that had attacked you. You wish that you had a\nhome to go to. You hope that soon you'll find one.");
    }
    if(choice=="Stay in shack"){
        printf("You pay no mind to the risk of there being more creatures. All you want is a\nplace to rest. With the crops outside you will have");
        printf("\na constant food source. As soon as you are inside you find the nearest place to lay down. A couch, sitting in the middle of the");
        printf("\nsingle room shack. You lay down and go to sleep.");
    }
    if(choice=="Look around"){
        printf("You look around... You find nothing but a peice of paper on the steps to the shack.\n It reads, \"Hey John, I'll be coming by");
        printf("\nnext weekend. Everyone says I souldn't go, with all the riots going on. They say\nthat the people involved aren't acting");
        printf("\nlike people. Almost like they're possesed, or \"MIND CONTROLLED\". I'm not buying it. Hope to see you soon!\n     -Jenny");
        printf("\n\n\"Poor girl,\" you whisper under your breath.");
    }
    //By river
    if(choice=="Go to cabin"){
        printf("You head off to the cabin. For the longest time you wished you had somewhere to live.\n You just hope that whoever lives there,");
        printf("\nif they're alive. If not, you'll just keep walking and NEVER turn back.\nYou promised you'd NEVER turn back."); 
    }
    if(choice=="Fish in river"){
        printf("You take a seat down on a rock. Staring at the river for a second, you can see a few\nfish swimming around. You reach onto your");
        printf("\nback, grab your spear and stab it into a fish. When your spear penetrates the water, instead of swimming away, all the fish");
        printf("\nseem to be throwing themselves at the spearhead. If this were a few months ago, this would seem like strange behavior.");
        printf("\nNow, it's exactly what you expected.");
    }
    if(choice=="Follow river"){
        printf("You always wished to have your own place. Somewhere to live. But that shack was an \nobvious trap. Exactly what IT would want.");
        printf("\nYou haven't seen it before, but you know when there is one nearby. You decide to \nplay it safe and wait. Just keep walking.");
    }
    //In sewer
    if(choice=="Look for stranger"){
        printf("That guy saved your life. Is it possible that he was human. You thought that they had\nall died. Not even sure how human you");
        printf("\nwere anymore yourself. You decided that either way, you needed to find him.");
    }
    if(choice=="Find exit"){
        printf("There had to be an exit to this place right. How else could that guy just disappear.\nYou look around. You can't find anything.");
        printf("\nChecking around the corner you came from, you see nothing but a dead end. \"She lured me in,\" you say under your breath.");
    }
    if(choice=="Check girl"){
        printf("You know it's not the Mother, but she's definitely one of the Controllers. The area around should be safe now. But not for");
        printf("\nlong. There are always reinforcements. There's always another.");
    }
    if(uHP==0){
        printf("Game Over");
    }else{
        printf("The End");
    }
}
