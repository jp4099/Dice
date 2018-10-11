int rollnum = 0;

void setup()
{
  size(300,400);
  noLoop();
}

void draw()
{
rollnum = 0;
  background(77);
   for(int y = 25; y <= 300; y+=100){
    for(int x = 25; x <= 300; x+=100){
      Die dice = new Die (x, y);
      dice.show();
    }
   }
   textSize(20);
   text("Total Dice Roll: " + rollnum, 60, 350);
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
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    fill(255,219,253);
    rect(myX,myY,50,50,7);
     
    if(number == 1){
      fill(0);
      ellipse(myX + 25, myY + 25, 10, 10);
      rollnum += 1;
      
    } else if (number == 2){
      fill(0);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      rollnum += 2;
      
    } else if (number == 3){
      fill(0);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      rollnum += 3;
      
    } else if (number == 4){
      fill(0);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      rollnum += 4;
      
    } else if (number == 5){
      fill(0);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      rollnum += 5;
      
    } else if (number == 6){
      fill(0);
      ellipse(myX + 15, myY + 12, 10, 10);
      ellipse(myX + 35, myY + 39, 10, 10);
      ellipse(myX + 35, myY + 12, 10, 10);
      ellipse(myX + 15, myY + 39, 10, 10);
      ellipse(myX + 15, myY + 26, 10, 10);
      ellipse(myX + 35, myY + 26, 10, 10);
      rollnum += 6;
    }
  }
}
