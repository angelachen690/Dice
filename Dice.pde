void setup()
  {
    size (350,370);
    textAlign (CENTER, CENTER);
    noLoop();
  }
  
Die bob;

void draw()
{
  background (144,234,255);
  int counter = 0;
  for (int y = 10; y <= 300; y = y + 50){
    for (int x = 10; x <= 350; x = x + 75){
      bob = new Die(x,y);
      bob.show();  
      counter+=bob.roll_number;
    }   
  }
  text ("Sum of dots: " + counter,175,330);
}
void mousePressed()
{
    redraw();
}

//models one single dice cube
class Die {
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
  
  void show(){
    stroke(0);
    fill (255);
    rect (myX,myY,30,30);
    fill(0);
    if (roll_number == 1){
      ellipse (myX + 15,myY + 15,5,5);
    }
    else if (roll_number == 2){
      ellipse (myX + 7, myY + 7, 5, 5);
      ellipse (myX +24,myY+24,5,5);
    }
    else if (roll_number == 3){
      ellipse (myX + 24, myY + 7, 5,5);
      ellipse (myX + 15, myY + 15, 5,5);
      ellipse (myX + 7, myY + 24, 5,5);
    }
    else if (roll_number == 4){
      ellipse (myX + 7, myY + 24, 5,5);
      ellipse (myX + 7, myY + 7, 5, 5);
      ellipse (myX + 24, myY + 7, 5,5);
      ellipse (myX +24,myY+24,5,5);
    }
    else if (roll_number == 5){
      ellipse (myX + 7, myY + 24, 5,5);
      ellipse (myX + 7, myY + 7, 5, 5);
      ellipse (myX + 24, myY + 7, 5,5);
      ellipse (myX +24,myY+24,5,5);
      ellipse (myX + 15,myY + 15,5,5);
    }
    else{
      ellipse (myX + 7, myY + 24, 5,5);
      ellipse (myX + 7, myY + 7, 5, 5);
      ellipse (myX + 24, myY + 7, 5,5);
      ellipse (myX +24,myY+24,5,5);
      ellipse (myX + 7, myY + 15.5,5,5); //left side dot
      ellipse (myX + 24, myY + 15.5,5,5); //right side dot
    }
  }
}
  
  //bottom left: ellipse (myX + 7, myY + 24, 5,5);
  //center dot: ellipse (myX + 15,myY + 15,5,5);
  //top left: ellipse (myX + 7, myY + 7, 5, 5);
  //top right: ellipse (myX + 24, myY + 7, 5,5);
  // bottom right: ellipse (myX +24,myY+24,5,5);
  
  
  
  
  //if (bob.roll_number == 1)
  //      counter++;
  //    else if (bob.roll_number == 2)
  //      counter += 2;
  //    else if (bob.roll_number == 3)
  //      counter +=3;
  //    else if (bob.roll_number == 4)
  //      counter +=4;
  //    else if (bob.roll_number == 5)
  //      counter +=5;
  //    else
  //      counter +=6;
