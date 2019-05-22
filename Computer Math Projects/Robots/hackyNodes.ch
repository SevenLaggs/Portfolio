/*File:
hackyNodes.ch*/
//Declaration and Initialization
int hLocation; 
double radius=1.75, trackwidth=3.69;
//Output
//Where is the hacky sack?
do{
    printf("\nWhere is the hacky sack?\n\n");
    scanf("%d", &hLocation);
}while(hLocation!=1&&hLocation!=2&&hLocation!=3&&hLocation!=4&&hLocation!=5&&hLocation!=6);
#include <linkbot.h>
CLinkbotI robot;
//Hacky sack 1
if(hLocation==1){
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(38, radius);
    robot.turnRight(90, radius, trackwidth);
    robot.driveDistance(33.5, radius);
    robot.turnRight(90, radius, trackwidth);
    robot.driveDistance(12, radius);
}
//Hacky sack 2
if(hLocation==2){
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(39, radius);
    robot.turnRight(92, radius, trackwidth);
    robot.driveDistance(60.5, radius);
    robot.turnRight(150, radius, trackwidth);
    robot.driveDistance(28, radius);
}
//Hacky sack 3
if(hLocation==3){
    robot.driveDistance(51.5, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(14, radius);
    robot.turnLeft(60, radius, trackwidth);
    robot.driveDistance(18, radius);
}
//Hacky sack 4
if(hLocation==4){
    robot.driveDistance(33.5, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(22, radius);
}
//Hacky sack 5
if(hLocation==5){
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(5, radius);
    robot.turnRight(60, radius, trackwidth);
    robot.driveDistance(36.5, radius);
}
//Hacky sack 6
if(hLocation==6){
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(34, radius);
    robot.turnRight(90, radius, trackwidth);
    robot.driveDistance(15.5, radius);
    robot.turnRight(30, radius, trackwidth);
    robot.driveDistance(18, radius);
}
