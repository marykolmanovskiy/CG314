// REALLY COOL APPEND ARRAY
Ball[] myBalls= new Ball[0];                              // new array of type Ball

void setup() {
  size (600, 600);
}

void draw() {
  background(0); 
  for (int i = 0; i < myBalls.length;i++) {              // using .length to get the number of items in the array
    myBalls[i].drawBall();                                // using the square brackets [] to get an item from the array
    myBalls[i].randomizePosition();
  }
}

void mousePressed() {
  Ball temp= new Ball(mouseX, mouseY);
  myBalls =(Ball[])append( myBalls, temp);               // using append() to ad an item to aray
}                                                        // notice that you mention the array twice, once as the array to add too
                                                          // and a second time as the result of the operation
class Ball {
  float posX, posY;
  Ball(int x, int y) {
    posX=x;
    posY=y;
  }

  void drawBall() {
    fill(random(0,255),random(0,255),random(100,255));
    stroke(random(0,255),random(0,255),random(100,255));
    strokeWeight(random(3));
    ellipse(posX, posY, 10, 10);   
    for (int i = 0; i < myBalls.length;i++) {
      line (posX, posY, myBalls[i].posX, myBalls[i].posY);
    }
  }
  void randomizePosition(){
    posX+= random(-1,1);
    posY+= random(-1,1);
  }
    
}




//ROCKETSHIP STUFF

//Rocketship [] ship = new Rocketship[10];

//void setup () {
//  size(800, 600);
//  //this for loop assigns all the new random variables to each new ship
//  for (int i=0; i<ship.length; i++) {
//    float x= random (1, width);
//    float y = random (1, height);
//    float size = random(5, 100);
//    color theColor = color(random(1, 255), random(1, 255), random(1, 255));
//    ship[i] = new Rocketship(x, y, size, theColor);
//  }
//}

//void draw () {
//  background(0);


//  if (keyPressed) {
//    //rly quick for loop specifically for objects and arrays
//    //all it does is make s is the placeholder for evry ship we make
//    for (Rocketship s : ship) {
//      s.move();
//    }
//  } else {
//    for (Rocketship s : ship) {
//      s.hover();
//    }
//  }
//  for (Rocketship s : ship) {
//    s.display();
//  }
//}




//COLOUR CHANGING THING THAT FOLLOWS MOUSE

//int amount = 100;
//float [] x = new float [amount];
//float [] y = new float [amount];
//color [] colour = new color [amount];

//void setup() {
//  size (800,800);
//  noStroke();

//}


//void draw() {
//  background(255);

//  //going backward with our for loop? we always go forward apparently
//  for(int i = x.length -1; i>0; i--){
//    x[i] = x[i-1];
//    y[i] = y[i-1];
//    colour[i] = color(random(100,255), random(0,255), random(0,55));
//   //^ gives x and y their previous value (bc of hte -)
//  }
//  x[0] = mouseX;
//  y[0] = mouseY;

//  for(int i= 0; i<x.length; i++){
//    fill(colour[i]);
//    ellipse(x[i], y[i], 40, 40);
//  }

//}





//SPACE STARS BG

//int stars = 200;
////changing the number easily changes how many stars u have

//float [] x = new float [stars];
//float [] y = new float [stars];
//float [] shade = new float [stars];
//float [] diameter = new float [stars];
//  //the "new" creates [i](?) empty float values for x, y, whatever
//  // changing [5] to [stars] lets us change 1 number and evrything changes

//void setup () {
//  size (800, 800);

//  //after that you set up their values
//  //this is a for loop
//  for (int i = 0; i<x.length; i++) {
//    x[i] = random(1, width);
//    y[i] = random(1, height);
//    shade [i] = random(0,255);
//    diameter [i] = random (1,10);
//  }
//}


//  void draw() {
//    background (0);

//    for (int i=0; i<x.length; i++){
//    fill (shade[i]);
//    ellipse(x[i], y[i], diameter[i], diameter[i]);
//    //this makes them move
//    y[i] += 0.1;
//    if(y[i]>height){
//      y[i] = 0;

//    }
//  }
//  }