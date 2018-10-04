//Declare a variable that stores the x location of the circle
int circleX = 0;

//Declare variables that state which direction the circle should move
boolean movingLeft = false;
boolean movingRight = false;

void setup()
{
  //Set the size of the window to 600 by 600
  size(800, 800);
}

void draw()
{
  //Set the background to a green colour
  background(60, 165, 106);
  
  //Draw a circle at the location of circleX and height/2 with a size of 50 by 50
  ellipse(circleX, height/2, 100, 100);
  
  //Left button
  fill(255);
  rectMode(CENTER);
  rect(width/2 - 100, height - 100, 200, 50);
  fill(0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Left", width/2 - 100, height - 100);
  
  //Right button
  fill(255);
  rectMode(CENTER);
  rect(width/2+100, height - 100, 200, 50);
  fill(0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Right", width/2+100, height - 100);
  
  //Stop button
  fill(255);
  rectMode(CENTER);
  rect(width/2, height-50, 200, 50);
  fill(0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Stop", width/2, height-50);
  
  if(movingRight == true)
  {
    circleX++;
  }
  
  if(movingLeft == true)
  {
    circleX--;
  }
}

void mouseClicked()
{
  //if the left button is pressed
  if(mouseX > width/2 - 200 && mouseX < width/2 && mouseY > height - 125 && mouseY < height - 75)
  {
    //Change the moving variables to allow the circle to moveLeft
    movingLeft = true;
    movingRight = false;
  }
  
  //if the right button is pressed
  if(mouseX > width/2 && mouseX < width/2 + 200 && mouseY > height - 125 && mouseY < height - 75)
  {
    //Change the moving variables to allow the circle to moveLeft
    movingLeft = false;
    movingRight = true;
  }
  
  //if the stop button is pressed
  if(mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height - 75 && mouseY < height - 25)
  {
    //Change the moving variables to allow the circle to moveLeft
    movingLeft = false;
    movingRight = false;
  }
}
