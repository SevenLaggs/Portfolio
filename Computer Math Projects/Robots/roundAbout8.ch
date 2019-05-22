/*File:
roundAbout8.ch*/
//Declaration
double radius = 1.75;
double trackwidth = 3.69;
#include <linkbot.h>
CLinkbotI robot;
//Initialization
robot.setJointSpeeds(200, NaN, -144);
robot.moveTime(13.5);
//robot.driveDistance(83, radius);
robot.setJointSpeeds(144, NaN, -200);
robot.moveTime(13.5);
//robot.driveDistance(83, radius);
