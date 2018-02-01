
class slider {
  int myXPos = 0;
  int myYPos = 0;
  int myWidth = 200;
  int myHeight = 20;
  color backgroundColor = color(30, 30, 30);
  color forgroundColor = color(200, 200, 200);
  float myValue = 1.0;
  boolean dragState = false;

  slider(int xPos, int yPos) {
    myXPos = xPos;
    myYPos = yPos;
  }

  void draw() {
    pushMatrix();
    translate(myXPos, myYPos);
    noStroke();
    fill(backgroundColor);
    rect(0, 0, myWidth, myHeight);
    drawColorgradient();
    fill(forgroundColor);
    stroke(backgroundColor);
    strokeWeight(2);
    colorMode(HSB, 1, 100, 100);
    fill(myValue, 80, 90);
    rect(0 + (myWidth - myHeight) * myValue, 0 - myHeight * 0.5, myHeight, myHeight*2, 5);
    popMatrix();
  }

  void drawColorgradient() {
    for(int i = 0; i < myWidth-4; i++) {
      noStroke();
      colorMode(HSB, myWidth-4, 100, 100);
      fill(i, 75, 90);
      rect(2+i, 2, 1, myHeight-4);
    }
  }
  
  void mousePressed() {
    if (insideRect(mouseX, mouseY, myXPos, myYPos, myWidth, myHeight)) {
      dragState = true;
      myValue = constrain((mouseX - myXPos)/float(myWidth), 0, 1);
    }
  }

  void mouseDragged() {
    if (dragState) {
      myValue = constrain((mouseX - myXPos)/float(myWidth), 0, 1);
    }
  }

  void mouseReleased() {
    dragState = false;
  }
 }