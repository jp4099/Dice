void setup()
{
  size(300,300);
  noLoop();
}

void draw()
{
  background(255);
   for(int y = 25; y <= 300; y+=100){
    for(int x = 25; x <= 300; x+=100){
      Die dice = new Die (x, y);
      dice.show();
    }
   }
}

void mousePressed()
{
  redraw();
}
  
class Die //models one single dice cube
{
  int myX, myY, number;
      
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    number = (int)(Math.random()*6)+1;
  }
  
  void roll(int number)
  {
     if((int)(Math.random()*6)+1 == 1){
     number= 1;
    } else if ((int)(Math.random()*6)+1 == 2){
     number= 2;
    } else if ((int)(Math.random()*6)+1 == 3){
     number= 3;
    } else if ((int)(Math.random()*6)+1 == 4){
     number= 4;
    } else if ((int)(Math.random()*6)+1 == 5){
     number= 5;
    } else {
     number= 6;
    }
}
  
  void show()
  {
    fill(255,195,195);
    rect(myX,myY,50,50,7);
     
    if(number == 1){
      fill(0);
      ellipse(myX + 25, myY + 25, 10, 10);
      
    } else if (number == 2){
      fill(0);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      
    } else if (number == 3){
      fill(0);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      
    } else if (number == 4){
      fill(0);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      
    } else if (number == 5){
      fill(0);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      
    } else {
      fill(0);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 25, myY + 15, 10, 10);
      ellipse(myX + 25, myY + 35, 10, 10);
    }
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
