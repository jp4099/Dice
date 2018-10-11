int rollnum = 0;
void setup()
{
  noLoop();
  size(400,550);
}
void draw()
{
  rollnum = 0;
  background(255);
for (int y = 60; y < 470; y+=70)
{
  for (int x = 50; x < 400; x+=50)
  {
    Die bob = new Die(x,y);
    bob.show();
  }
  }
      text("Total dice roll: " + rollnum, 150, 470);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int diceNum, myX, myY;
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    diceNum = (int)(Math.random()*7+1);
  }
  void show()
  {
    fill(255);
    rect(myX-20,myY-20,40,40,3);
    fill(0);
    if (diceNum == 1) 
    { 
      ellipse(myX,myY, 7,7);
      rollnum += 1;
    } 
    else if (diceNum==2) 
    {
      ellipse(myX- 10,myY -10,7,7);
      ellipse(myX + 10, myY + 10,7,7);
      rollnum += 2;
    }
    else if (diceNum==3) 
    {
      ellipse(myX- 10,myY -10,7,7);
      ellipse(myX, myY,7,7);
      ellipse(myX + 10, myY + 10,7,7);
      rollnum +=3;
    } 
    else if (diceNum == 4)
    {
    ellipse(myX- 10,myY -10,7,7);
    ellipse(myX -10, myY + 10,7,7);
    ellipse(myX +10, myY -10,7,7);
    ellipse(myX+10,myY +10,7,7);
    rollnum +=4;
    }
    else if (diceNum ==5)
    {
    ellipse(myX- 10,myY -10,7,7);
    ellipse(myX +10, myY + 10,7,7);
    ellipse(myX +10, myY -10,7,7);
    ellipse(myX-10,myY +10,7,7);
    ellipse(myX, myY,7,7);
    rollnum += 5;
    } 
    else 
    {
    ellipse(myX- 10,myY -12,7,7);
    ellipse(myX -10, myY + 12,7,7);
    ellipse(myX +10, myY -12,7,7);
    ellipse(myX-10, myY,7,7);
    ellipse(myX+10, myY,7,7);
    ellipse(myX+10,myY +12,7,7);
    rollnum += 6;
  }
}
}
