class Cat {
  float x;
  float y;
  color eyeColor;
  color furColor;
  color innerEar;

  Cat(float tempX, float tempY, color tempEyecolor, color tempFurcolor, color tempInnerear) {
    x = tempX;
    y = tempY;
    eyeColor = tempEyecolor;
    furColor = tempFurcolor;
    innerEar = tempInnerear;
  }

  void display () {
    x = 500;
    y = 500;
    eyeColor = 0;
    furColor = 255;
    innerEar = 255; 

    stroke(0); //< that was added after the fact 
    fill(furColor);
    triangle(x+0, y+-71, x+125, x+-533+y+-3, x+81, x-248); //ear1
    triangle(x+-121, y+-32, x+-20, x+32+y+-637, x-80, x-248); //ear2
    fill(innerEar);
    triangle(x+0, y+-36, x+109, x+-539+y+-7, x+77, x-217); //ear inner1
    triangle(x+-110, y+-20, x+-18, x+40+y+-608, x-77, x-215); //ear inner2
    ellipse (x, y, 283, 231); //face
    fill(eyeColor);
    ellipse (x+54, y, 3, 32); //eyes
    ellipse (x-52, y, 3, 32);
  }


  void disappear() {
    furColor = color (random(0, 255), random(255), 90);
  }

  void anger() {
    // if (mouseX>266 && mouseX<238 && mouseY>100 && mouseY<50) {
    furColor = color (252, 41, 41);
  }
}
