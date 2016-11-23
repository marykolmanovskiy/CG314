//mary kolmanovskiy
//here's one of my favourite cat videos, please enjoy the tiny meow about 10 seconds in
//click to double speed

import ddf.minim.*;
import processing.video.*;
Movie myMovie;
Minim minim;
AudioPlayer player1;
AudioPlayer player2;

//boolean hasVolume;


void setup() {
  size (854,480);
  frameRate(30);
  myMovie = new Movie(this, "kuri.mp4");
  myMovie.speed(1); //speed of the movie doesn't seem to change at all no matter what number i put here?
  //-even though it changes normally in void mousepressed
  myMovie.loop();
  myMovie.volume(0);
  
  minim = new Minim(this);
  player2 = minim.loadFile("kuri_sound_faster.mp3");
  player1 = minim.loadFile("kuri_sound.mp3");
  
  player1.play();
  player2.play();
  player2.mute();
  
  //hasVolume = player1.hasControl(Controller.VOLUME);
  //hasVolume = player2.hasControl(Controller.VOLUME);
}

void draw() {
  if (myMovie.available()) {
    myMovie.read();
  }
  image(myMovie, 0, 0);
  //if(hasVolume){
  //  player1.setVolume(1);
  //  player2.setVolume(0);}
}

void mousePressed(){
  myMovie.speed(2);
  player2.unmute();
  player1.mute();
  //if(hasVolume){
  //  player1.setVolume(0);
  //  player2.setVolume(1);}
}
