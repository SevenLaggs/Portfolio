/*File:
relay.ch*/
//Declaration
int robot;
double radius = 1.75;
double trackwidth = 3.69;
do{    
    printf("\nWhich robot are you controlling,\n1, 2, 3, 4, 5, or 6?\n\n");
    scanf("%d", &robot);
}while(robot!=1&&robot!=2&&robot!=3&&robot!=4&&robot!=5&&robot!=6);
#include <linkbot.h>
CLinkbotI robot1, robot2, robot3, robot4, robot5, robot6;
CLinkbotI All[6]={robot1, robot2, robot3, robot4, robot5, robot6};
CLinkbotIGroup groupAll;
groupAll.addRobots(All);
groupAll.setSpeed(4,radius);
//Initialization
if(robot==1){
    robot1.turnRight(90, radius, trackwidth);
    robot1.driveDistance(12, radius);
    robot1.turnLeft(90, radius, trackwidth);
    robot1.driveDistance(75, radius);
}
if(robot==2){
    robot2.driveDistance(12, radius);
    robot2.turnLeft(90, radius, trackwidth);
    robot2.driveDistance(6, radius);
    robot2.turnLeft(30, radius, trackwidth);
    robot2.driveDistance(60, radius);
}
if(robot==3){
    robot3.driveDistance(8, radius);
    robot3.turnRight(45, radius, trackwidth);
    robot3.driveDistance(24, radius);
    robot3.turnRight(90, radius, trackwidth);
    robot3.setSpeed(12, radius);
    robot3.driveDistance(120, radius);
}
