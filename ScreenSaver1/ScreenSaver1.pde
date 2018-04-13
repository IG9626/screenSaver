//IG9626
Line[] myLines = new Line[60];
void setup() {
  size(displayWidth, displayHeight);
  //framrate 5
  for (int i = 0; i < myLines.length; i++) {
    myLines[i]=new Line (random(0,500),random(0,25),random(.05,10), random(0,25), color(255,196,196));
    //(float tempX, float tempY, float tempStroke, float tempLength, color tempC)
  }
}
void draw() {
  if (frameCount> 500) {
    background(random(100, 255));
    frameCount = 0;
  } else {
    for (int i = 0; i < myLines.length; i++) {
      myLines[i].display();
    }
  }
}