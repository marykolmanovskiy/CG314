Cat cat;
Harambe dumb;
Peppers pepperred;


void setup() {
  size (1000, 1000);
  cat = new Cat (500, 500, 0, 0, 255);
  dumb = new Harambe  (width/5, height/2, 50, color(135, 140, 180));
  pepperred=new Peppers (width/2, height/2, 60, color(240, 29, 29));
}

void draw() {

  if (mousePressed && mouseButton == RIGHT) {
    background(random(255, 255), random(100, 255), random(150, 255));
    textSize(285);  
    fill(255);
    text("CATS R", 0, 300); 
    textSize(285);
    fill(255);
    text("GOOD", 70, 900);
  
    cat.display();
    
} else { 
  background(255);
  textSize(15);
  fill(0);
  text("right click to discover the truth",383, 134);
  
  cat.display();
  dumb.display();
  pepperred.display();
  dumb.move();
  pepperred.drop();

}
}
