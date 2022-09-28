void setup()
  {
    size (500,300);
    textAlign (CENTER, CENTER);
    noLoop();
  }
  
Die bob;

void draw()
{
  bob = new Die(80,150);
  bob.show();
}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
  int roll_number, myX, myY;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
      //variable initializations here
  }
  void roll()
  {
    roll_number = (int)(Math.random() * 6 + 1);
      
    
    
  }
  void show()
  {
    stroke(0);
    fill (255);
    rect (myX,myY,30,30);
    fill(0);
    if (roll_number ==1)
      ellipse (myX + 15,myY + 15,5,5);
    else if (roll_number == 2){
      ellipse (myX + 5, myY + 5, 5, 5);
      ellipse (myX +20,myY+20,5,5);
    }
    else
      System.out.print ("else");
  }
}
