/*File:
errorInDistance.ch*/
//Declaration
#include <linkbot.h>
CLinkbotI robot;
double radius = 1.75, trackwidth = 3.69, traveled, error, errorPer;
//Initialization
robot.setSpeed(2.5, radius);
robot.driveDistance(10, radius);
robot.getDistance(traveled, radius);
error=(10-traveled)/10;
errorPer=abs(error*100);
printf("Robot traveled %.4lfin\n", traveled);
printf("Error percent is %.2lf%%", errorPer);
