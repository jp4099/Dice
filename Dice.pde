Die one = new Die(100,100);

void setup()
{
  size(300,300);
  noLoop();
}

void draw()
{
  one.show();
  one.roll();
}

void mousePressed()
{
  redraw();
}
  
class Die //models one single dice cube
{
  int myCircle, mySize, myX, myY;
      
  Die(int x, int y) //constructor
  {
    myCircle = 0;
    mySize = 0;
    myX = x;
    myY = y;
  }
  
  void roll()
  {
     mySize = 100;
     myCircle = 20;
  }
  
  void show()
  {
     fill(255,195,195);
     rect(myX,myY,mySize,mySize,7);
     fill(0,0,0);
     ellipse(150,150,myCircle,myCircle);
  }
}


/*Balloon bob = new Balloon(225,150);
Balloon sue = new Balloon(75,150);

void setup()
{
  size(300,300);
}

void draw()
{
  bob.show();
  bob.inflate();
  
  sue.show();
  sue.inflate();
}

class Balloon
{
  int mySize, myX, myY;
  void inflate()
  {
    mySize = mySize + 1;
  }
  
  Balloon(int x, int y) //constructor initialize the variables/
  {
    mySize = 0;
    myX = x;
    myY = y;
  }
  
  void show()
  {
    fill (255,0,0);
    ellipse (myX,myY,mySize,mySize);
  }
}*/
