//object oriented programming is like the [player base] 
//and all the details being filled in
//well now i broke it

//a class has the specifications for an object
Rocketship ship;
Rocketship ship2;

void setup() {
  size (800,800);
  ship = new Rocketship //this is where we pass the stuff onto the constructor
  (width/2, height/2, 150, color(255,200,200));
  ship2 = new Rocketship (width/4, height/4, 70, color(50,200,50));
}

void draw(){
  background(0);

  if (keyPressed) {
    ship.move();
    ship2.move();
  } else {
    ship.hover();
  }
  ship.display();
  ship2.display();
}
  