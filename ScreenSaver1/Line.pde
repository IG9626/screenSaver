//IG9626
class Line {
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;
  color c;
  //Constructor 
  Line(float tempX, float tempY, float tempStroke, float tempLength, color tempC) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    pointCount = tempLength;
    c =  tempC;
  }        
  void display() {
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos =random(width);
      ypos =random(height);
    } else {
      if (random(100)>70) { 
        strokeWeight(strokeW);
        color(c);
        moveLeft(xpos, ypos, pointCount);
      } else if (random (100)>55) {
        strokeWeight(strokeW);
        color(c);
        moveRight(xpos, ypos, pointCount);
      } else if (random (100)>45) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, pointCount);
      } else {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, pointCount);
      }
    }
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX +i, startY);
      xpos = startX +i;
      ypos = startY;
    }
  }
  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX - i, startY);
      xpos = startX -i;
      ypos = startY;
    }
  }
  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      xpos = startX;
      ypos = startY - i;
    }
  }
  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos = startX;
      ypos = startY + i;
    }
  }
}