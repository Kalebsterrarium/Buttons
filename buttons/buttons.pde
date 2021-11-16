//Among us
//Global Variables

float buttonX, buttonY, buttonWidth, buttonHeight; 
color buttonColour, yellow=#E0D71D, orange=#E0931D, nightyellow, nightorange,  white=#FFFFFF, reset=white;



















void setup () {
  fullScreen();
  //Population 
  buttonX=displayWidth*1/4;
  buttonY=displayHeight*1/3;
  buttonWidth=displayWidth*1/2;
  buttonHeight=displayHeight*1/3;
}//End setup()

void draw() {
  background(white);
  println(mouseX, mouseY);
  if ( mouseX >=buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) {
    buttonColour = orange;
  } else {
    buttonColour = yellow;
    
  }//End IF Button Colour
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(reset);
}//End draw()

void mousePressed() {
  if (mouseX >=buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
