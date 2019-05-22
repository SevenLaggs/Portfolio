/*File;
driveTheBot.ch*/
//Declaration and Initialization
double radius=1.75, trackwidth=3.69, distance;
string_t ans;
#include <linkbot.h>
CLinkbotI robot;
robot.setJointSpeeds(400, NaN, 400);
//Output

//drive function
void drive(){
    printf("\nHow far?\n\n");
    scanf("%lf", &distance);
}
//left function
void left(){
    printf("\nHow far?\n\n");
    scanf("%lf", &distance);
}
//right function
void right(){
    printf("\nHow far?\n\n");
    scanf("%lf", &distance);
}

int main(){
    do{
        printf("\nWhat to do?\n\n");
        scanf("%s", &ans);
        if(ans=="drive"){
            drive();
            robot.driveDistance(distance, radius);
        }
        if(ans=="right"){
            right();
            robot.turnRight(distance, radius, trackwidth);
        }
        if(ans=="left"){
            left();
            robot.turnLeft(distance, radius, trackwidth);
        }
    }while(ans!="done");
}
