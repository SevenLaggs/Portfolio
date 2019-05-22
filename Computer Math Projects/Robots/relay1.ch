/*File:
relay.ch*/
//Declaration
int robotNum;
double radius = 1.75;
double trackwidth = 3.69;
do{
    printf("What robot are you controlling");
    scanf("%d", &robotNum);
}
while(robotNum!=1&&robotNum!=2&&robotNum!=3&&robotNum!=4&&robotNum!=5&&robotNum!=6);
#include <linkbot.h>
CLinkbotI robot;
//Initialization
//Robot1
if(robotNum==1){
    robot.setSpeed(10, radius);
    robot.turnRight(7, radius, trackwidth);
    robot.driveDistance(72, radius);
}
//Robot2
if(robotNum==2){
    robot.driveDistance(12, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(6, radius);
    robot.turnLeft(25, radius, trackwidth);
    robot.setSpeed(10, radius);
    robot.driveDistance(35, radius);
}
//Robot3
if(robotNum==3){
    robot.driveDistance(8, radius);
    robot.turnRight(45, radius, trackwidth);
    robot.driveDistance(24, radius);
    robot.turnRight(90, radius, trackwidth);
    robot.setSpeed(12, radius);
    robot.driveDistance(120, radius);
}
//Robot4
if(robotNum==4){
    robot.setSpeed(10, radius);
    robot.turnLeft(7, radius, trackwidth);
    robot.driveDistance(72, radius);
}
//Robot5
if(robotNum==5){
    robot.driveDistance(12, radius);
    robot.turnRight(90, radius, trackwidth);
    robot.driveDistance(6, radius);
    robot.turnRight(25, radius, trackwidth);
    robot.setSpeed(10, radius);
    robot.driveDistance(35, radius);
}
//Robot6
if(robotNum==6){
    robot.setSpeed(12, radius);
    robot.driveDistance(10, radius);
    robot.turnLeft(45, radius, trackwidth);
    robot.driveDistance(24, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(120, radius);
}
