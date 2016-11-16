import processing.video.*;
Movie myMovie;

void setup() {
  size(640, 360);
  frameRate(30);
  myMovie = new Movie(this, "monster.mov");
  myMovie.speed(4.0);
  myMovie.loop();
}

void draw() {
  if (myMovie.available()) {
    myMovie.read();
  }
  image(myMovie, 0, 0);
}

void mousePressed(){
  myMovie.speed(80);
}