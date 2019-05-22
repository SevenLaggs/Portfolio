/*File;
Robo2018.ch*/
//Declaration and Initialization
double radius=1.75, trackwidth=3.69;
#include <linkbot.h>
CLinkbotI robot;
//Output
robot.setJointSpeeds(-400, NaN, 400);
robot.driveDistance(500, radius);
