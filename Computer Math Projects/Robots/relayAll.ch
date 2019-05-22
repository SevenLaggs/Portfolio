
double radius = 1.75;
double trackwidth = 3.69;
#include <linkbot.h>
CLinkbotI robot;
//Relay1
robot.setSpeed(6, radius);
robot.driveDistance(12, radius);
robot.turnLeft(91, radius, trackwidth);
robot.driveDistance(69, radius);
//Reset to 2
robot.driveDistance(-36, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(-23, radius);
//Relay2
robot.driveDistance(12, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(6, radius);
robot.turnLeft(25, radius, trackwidth);
robot.setSpeed(10, radius);
robot.driveDistance(35, radius);
//Reset to 3
robot.driveDistance(-10, radius);
robot.turnRight(45, radius, trackwidth);
robot.driveDistance(6, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(-10, radius);
//Relay3
robot.driveDistance(8, radius);
robot.turnRight(45, radius, trackwidth);
robot.driveDistance(24, radius);
robot.turnRight(90, radius, trackwidth);
robot.setSpeed(12, radius);
robot.driveDistance(120, radius);
