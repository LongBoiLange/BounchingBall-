 
int radius = 30;
float xPos, yPos; 


float xspeed = 4;
float yspeed = 5;
//Hastighed

int xDirection = 2;
int yDirection = 2;
//Retning

void setup() 
{
fullScreen ();
  frameRate(50);
  ellipseMode(CENTER);
  
  xPos = width/2;
  yPos = height/2;
  //height of width referer til skærmens størrelse.
}

void draw() 
{
  background(102);
  
  xPos = xPos + ( xspeed * xDirection );
  yPos = yPos + ( yspeed * yDirection );
 
  if (xPos > width-radius || xPos < radius ) {
    xDirection *= -1;
  }
  if (yPos > height-radius || yPos < radius) {
    yDirection *= -1;
  }
//kigger på positionen af cirklen og hvis den er højere end størrelsen på cirklen
//vil den ændre retning.

 fill(10,50,100);
  ellipse(xPos, yPos, radius, radius);
  
}
