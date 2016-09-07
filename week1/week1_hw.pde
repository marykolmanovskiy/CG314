void setup() {
  size(480, 480);
}

void draw() {
  if (mousePressed) {
    fill(500);
  } else {
    fill(255);
  }
  ellipse(mouseX,mouseY, 80, 80);
}
        
