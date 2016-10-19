class Rocketship {       //conventional to use capitals for classes but not necessary
  float x;
  float y;
  float size;
  color theColor = color(255, 200, 200);

  Rocketship(float tempX, float tempY, float tempSize, color tempColor) {
    //assigns variables to temp versions of those variables  
    x = tempX;
    y = tempY;
    size = tempSize;
    theColor = tempColor;
  }



  void move() {
    x+=2;
    if (x>width+size) {
      x=-size;
    }
  }

  void hover() {
    x+=random (-1, 1);
    y+=random (-1, 1);
  }


  void display() {                  //draws the actual rocketship
    fill (theColor);
    rectMode(CENTER);  //this makes the x,y in the center of the thing (we don't actually utilize it in this sketch)
    rect(x, y, size, size/2);
    triangle(x+size/2, y-size/4, x+size/2, y+size/4, x+size, y);

    for (int i=0; i<size; i++) {
      stroke(random(100, 255), random(0, 75), random(0, 75));
      noFill();
      float circleSize = random(size/5, size/3);
      ellipse(x-size/1.7, y-size/4 + i, //adding i to the thing makes it move down once each time
        circleSize, circleSize);
    }
  }
}