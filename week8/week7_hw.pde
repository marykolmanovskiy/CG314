Cat cat;

void setup() {
  size (800,800);
  cat = new Cat (500, 500, 0, 0, 255);
}

void draw() {
  background(255);
 

 if (mousePressed){
   cat.disappear();
 }else {
  cat.display();
 }
}