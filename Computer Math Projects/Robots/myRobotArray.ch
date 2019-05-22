#include <linkbot.h>

CLinkbotI robot0, robot1, robot2, robot3;
CLinkbotI All[4]={robot0, robot1, robot2, robot3};
CLinkbotI Out[2]={robot0, robot3};
CLinkbotI In[2]={robot1, robot2};
CLinkbotI Left[2]={robot0, robot1};
CLinkbotI Right[2]={robot2, robot3};
CLinkbotIGroup groupAll, groupOut, groupIn, groupLeft, groupRight;
double radius = 1.75;
double trackwidth = 3.69;

groupAll.addRobots(All);
groupOut.addRobots(Out);
groupIn.addRobots(In);
groupLeft.addRobots(Left);
groupRight.addRobots(Right);
groupAll.setLEDColor("blue");
//Start
groupAll.setSpeed(2, radius);
groupAll.turnLeft(360, radius, trackwidth);
//Blue Section
groupAll.setLEDColor("green");
groupLeft.turnLeft(45, radius, trackwidth);
groupRight.turnRight(45, radius, trackwidth);
groupAll.driveAngle(360);
groupAll.driveAngle(-180);
//Yellow Section
groupAll.setLEDColor("yellow");
groupAll.setSpeed(8, radius);
robot0.turnLeft(180, radius, trackwidth);
robot3.turnRight(180, radius, trackwidth);
groupAll.setSpeed(2, radius);
groupAll.driveAngle(200);
groupLeft.turnLeft(90, radius, trackwidth);
groupRight.turnRight(90, radius, trackwidth);
sleep (2);
//Orange Section
groupAll.setLEDColor("orange");
groupAll.driveAngle(180);
groupAll.turnRight(720, radius, trackwidth);
groupAll.driveAngle(-360);
groupLeft.turnRight(45, radius, trackwidth);
groupRight.turnLeft(45, radius, trackwidth);
//Red Section
groupAll.setLEDColor("red");
groupIn.driveAngle(-90);
groupOut.driveAngle(360);
robot1.turnLeft(90, radius, trackwidth);
robot2.turnRight(90, radius, trackwidth);
groupIn.driveAngle(720);
