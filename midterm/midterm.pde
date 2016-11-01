//Mary Kolmanovskiy Midterm Tamagotchi Game
//CG314
//NOV 1,2016

//INSTRUCTIONS: your work is simple! keep the cat alive for as long as you can.
//Clicking on the buttons replenishes fatigue and food bar respectively.
//How long will your resolve last?
//Click on the cat to experiment!


import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioInput input;

//Mary Kolmanovskiy Midterm Tamagotchi Game
//CG314
//NOV 1,2016

//INSTRUCTIONS: your work is simple! keep the cat alive for as long as you can.
//Clicking on the buttons replenishes fatigue and food bar respectively.
//How long will your resolve last?
//Click on the cat to experiment!


import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioInput input;


PImage nap;
PImage food;
PImage fatigue0;
PImage fatigue1;
PImage fatigue2;
PImage fatigue3;
PImage hunger0;
PImage hunger1;
PImage hunger2;
PImage hunger3;
PImage cat;
PImage cat2;
PImage catfatigue2;
PImage catfatigue1;
PImage catfatigue0;
PImage catfatiguee1;
PImage catfatiguee2;
PImage end;
PImage angry;
PImage happy;
int button = 0;
int catX = 342;
int catY = 278;

int start;
int start2;
int m;
int m2;

boolean barnap = true;
boolean barfood = true;
boolean mouseClicked;
boolean endscreen;
boolean angryy = false;

void setup() {

  minim = new Minim(this);
  player = minim.loadFile("silver.mp3");
  input = minim.getLineIn();
  player.play();

  start=millis();
  start2=millis();
  size (870, 600);
  background(255);

  nap = loadImage("nap.png");
  food = loadImage("food.png");
  fatigue0 = loadImage("fatigue0.png");
  fatigue1 = loadImage("fatigue1.png");
  fatigue2 = loadImage("fatigue2.png");
  fatigue3 = loadImage("fatigue3.png");
  hunger0 = loadImage("hunger0.png");
  hunger1 = loadImage("hunger1.png");
  hunger2 = loadImage("hunger2.png");
  hunger3 = loadImage("hunger3.png");
  cat = loadImage("cat.png");
  cat2 = loadImage("cat2.png");
  catfatigue2 = loadImage("catfatigue2.png");
  catfatigue1 = loadImage("catfatigue1.png");
  catfatigue0 = loadImage("catfatigue0.png");
  catfatiguee1 = loadImage("catfatiguee1.png");
  catfatiguee2 = loadImage("catfatiguee2.png");
  angry = loadImage("catangry.png");
  end = loadImage("end.png");
  happy = loadImage("happy.png");
}

void draw() {

  image(nap, 10, 15);
  image(food, 10, 132);
  image(fatigue3, 425, 10);
  image(hunger3, 636, 10);
  image(cat, catX, catY);

  m=millis()-start;
  m2=millis()-start2;
  println(m);
  

//fatigue bar details
  if (barnap == true) {
  }  
  if (m>15000) {
    image(fatigue0, 425, 10);
    image(catfatigue0, catX, catY);
  } else if (m>14000) {
    image(fatigue1, 425, 10);
    image(catfatigue1, catX, catY);
  } else if (m>13000) {
    image(fatigue1, 425, 10);
    image(catfatiguee1, catX, catY);
  } else if (m>12000) {
    image(fatigue1, 425, 10);
    image(catfatigue1, catX, catY);
  } else if (m>11000) {
    image(fatigue1, 425, 10);
    image(catfatiguee1, catX, catY);
  } else if (m>10000) {
    image(fatigue1, 425, 10);
    image(catfatigue1, catX, catY);
  } else if (m>9000) {
    image(fatigue2, 425, 10);
    image(catfatigue2, catX, catY);
  } else if (m>8000) {
    image(fatigue2, 425, 10);
    image(catfatiguee2, catX, catY);
  } else if (m>7000) {
    image(fatigue2, 425, 10);
    image(catfatigue2, catX, catY);
  } else if (m>6000) {
    image(fatigue2, 425, 10);
    image(catfatiguee2, catX, catY);
  } else if (m > 5000) {
    image(fatigue2, 425, 10);
    image(catfatigue2, catX, catY);
  } else if (m>4000) {
    image(cat, catX, catY);
  } else if (m>3000) {
    image(cat2, catX, catY);
  } else if (m>2000) {
    image(cat, catX, catY);
  } else if (m>1000) {
    image(cat2, catX, catY);
  }
  
//food bar details
  if (barfood == true) {
  }
  if (m2>16000) {
    image(end, 0, 0);
  } else if (m2>15000) {
    image(hunger0, 636, 10);
    image(catfatigue0, catX, catY);
  } else if (m2>14000) {
    image(hunger1, 636, 10);
    image(catfatiguee1, catX, catY);
  } else if (m2>13000) {
    image(hunger1, 636, 10);
    image(catfatigue1, catX, catY);
  } else if (m2>12000) {
    image(hunger1, 636, 10);
    image(catfatiguee1, catX, catY);
  } else if (m2>11000) {
    image(hunger1, 636, 10);
    image(catfatigue1, catX, catY);
  } else if (m2>10000) {
    image(hunger1, 636, 10);
    image(catfatiguee1, catX, catY);
  } else if (m2>9000) {
    image(hunger2, 636, 10);
    image(catfatigue2, catX, catY);
  } else if (m2>8000) {
    image(hunger2, 636, 10);
    image(catfatiguee2, catX, catY);
  } else if (m2>7000) {
    image(hunger2, 636, 10);
    image(catfatigue2, catX, catY);
  } else if (m2>6000) {
    image(hunger2, 636, 10);
    image(catfatiguee2, catX, catY);
  } else if (m2 > 5000) {
    image(hunger2, 636, 10);
    image(catfatigue2, catX, catY);
  } else if (m2>4000) {
    image(cat, catX, catY);
  } else if (m2>3000) {
    image(cat2, catX, catY);
  } else if (m2>2000) {
    image(cat, catX, catY);
  } else if (m2>1000) {
    image(cat2, catX, catY);
  }

//reaction images go here
  if (mousePressed && mouseX >catX-30 && mouseX <catX+365 && mouseY >catY+0 && mouseY <catY+300) {
    image (angry, catX,catY);
  }
  if (mousePressed && (mouseX >catX-30 && mouseX <catX+365 && mouseY >catY+0 && mouseY <catY+300)
    && (m<5000)){
    image (happy, catX, catY);
  }
}

//resets on time
void mouseClicked() {
  if (mouseX > 0 && mouseX <200 && mouseY >0 && mouseY <102) {
    barnap = true;
    start=millis();
  } else if (mouseX > 10 && mouseX <200 && mouseY >130 && mouseY <230) {  
    barfood = true;
    start2=millis();
  } 
}
PImage nap;
PImage food;
PImage fatigue0;
PImage fatigue1;
PImage fatigue2;
PImage fatigue3;
PImage hunger0;
PImage hunger1;
PImage hunger2;
PImage hunger3;
PImage cat;
PImage cat2;
PImage catfatigue2;
PImage catfatigue1;
PImage catfatigue0;
PImage catfatiguee1;
PImage catfatiguee2;
PImage end;
PImage angry;
PImage happy;
int button = 0;
int catX = 342;
int catY = 278;

int start;
int start2;
int m;
int m2;

boolean barnap = true;
boolean barfood = true;
boolean mouseClicked;
boolean endscreen;
boolean angryy = false;

void setup() {

  minim = new Minim(this);
  player = minim.loadFile("silver.mp3");
  input = minim.getLineIn();
  player.play();

  start=millis();
  start2=millis();
  size (870, 600);
  background(255);

  nap = loadImage("nap.png");
  food = loadImage("food.png");
  fatigue0 = loadImage("fatigue0.png");
  fatigue1 = loadImage("fatigue1.png");
  fatigue2 = loadImage("fatigue2.png");
  fatigue3 = loadImage("fatigue3.png");
  hunger0 = loadImage("hunger0.png");
  hunger1 = loadImage("hunger1.png");
  hunger2 = loadImage("hunger2.png");
  hunger3 = loadImage("hunger3.png");
  cat = loadImage("cat.png");
  cat2 = loadImage("cat2.png");
  catfatigue2 = loadImage("catfatigue2.png");
  catfatigue1 = loadImage("catfatigue1.png");
  catfatigue0 = loadImage("catfatigue0.png");
  catfatiguee1 = loadImage("catfatiguee1.png");
  catfatiguee2 = loadImage("catfatiguee2.png");
  angry = loadImage("catangry.png");
  end = loadImage("end.png");
  happy = loadImage("happy.png");
}

void draw() {

  image(nap, 10, 15);
  image(food, 10, 132);
  image(fatigue3, 425, 10);
  image(hunger3, 636, 10);
  image(cat, catX, catY);



  //hunger and fatigue bars

  m=millis()-start;
  m2=millis()-start2;
  println(m);
  

  
  if (barnap == true) {
  }  
  if (m>15000) {
    image(fatigue0, 425, 10);
    image(catfatigue0, catX, catY);
  } else if (m>14000) {
    image(fatigue1, 425, 10);
    image(catfatigue1, catX, catY);
  } else if (m>13000) {
    image(fatigue1, 425, 10);
    image(catfatiguee1, catX, catY);
  } else if (m>12000) {
    image(fatigue1, 425, 10);
    image(catfatigue1, catX, catY);
  } else if (m>11000) {
    image(fatigue1, 425, 10);
    image(catfatiguee1, catX, catY);
  } else if (m>10000) {
    image(fatigue1, 425, 10);
    image(catfatigue1, catX, catY);
  } else if (m>9000) {
    image(fatigue2, 425, 10);
    image(catfatigue2, catX, catY);
  } else if (m>8000) {
    image(fatigue2, 425, 10);
    image(catfatiguee2, catX, catY);
  } else if (m>7000) {
    image(fatigue2, 425, 10);
    image(catfatigue2, catX, catY);
  } else if (m>6000) {
    image(fatigue2, 425, 10);
    image(catfatiguee2, catX, catY);
  } else if (m > 5000) {
    image(fatigue2, 425, 10);
    image(catfatigue2, catX, catY);
  } else if (m>4000) {
    image(cat, catX, catY);
  } else if (m>3000) {
    image(cat2, catX, catY);
  } else if (m>2000) {
    image(cat, catX, catY);
  } else if (m>1000) {
    image(cat2, catX, catY);
  }

  if (barfood == true) {
  }
  if (m2>16000) {
    image(end, 0, 0);
  } else if (m2>15000) {
    image(hunger0, 636, 10);
    image(catfatigue0, catX, catY);
  } else if (m2>14000) {
    image(hunger1, 636, 10);
    image(catfatiguee1, catX, catY);
  } else if (m2>13000) {
    image(hunger1, 636, 10);
    image(catfatigue1, catX, catY);
  } else if (m2>12000) {
    image(hunger1, 636, 10);
    image(catfatiguee1, catX, catY);
  } else if (m2>11000) {
    image(hunger1, 636, 10);
    image(catfatigue1, catX, catY);
  } else if (m2>10000) {
    image(hunger1, 636, 10);
    image(catfatiguee1, catX, catY);
  } else if (m2>9000) {
    image(hunger2, 636, 10);
    image(catfatigue2, catX, catY);
  } else if (m2>8000) {
    image(hunger2, 636, 10);
    image(catfatiguee2, catX, catY);
  } else if (m2>7000) {
    image(hunger2, 636, 10);
    image(catfatigue2, catX, catY);
  } else if (m2>6000) {
    image(hunger2, 636, 10);
    image(catfatiguee2, catX, catY);
  } else if (m2 > 5000) {
    image(hunger2, 636, 10);
    image(catfatigue2, catX, catY);
  } else if (m2>4000) {
    image(cat, catX, catY);
  } else if (m2>3000) {
    image(cat2, catX, catY);
  } else if (m2>2000) {
    image(cat, catX, catY);
  } else if (m2>1000) {
    image(cat2, catX, catY);
  }


  if (mousePressed && mouseX >catX-30 && mouseX <catX+365 && mouseY >catY+0 && mouseY <catY+300) {
    image (angry, catX,catY);
  }
  if (mousePressed && (mouseX >catX-30 && mouseX <catX+365 && mouseY >catY+0 && mouseY <catY+300)
    && (m<5000)){
    image (happy, catX, catY);
  }
}

void mouseClicked() {
  if (mouseX > 0 && mouseX <200 && mouseY >0 && mouseY <102) {
    barnap = true;
    start=millis();
  } else if (mouseX > 10 && mouseX <200 && mouseY >130 && mouseY <230) {  
    barfood = true;
    start2=millis();
  } 
}
