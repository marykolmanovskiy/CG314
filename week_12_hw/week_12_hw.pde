//instructions: move mouseX up and down

float x,y,z;
float rotation = PI/48;
PImage tex;
PShape scary;
PShape earth;
float xx = 2;

void setup(){
  size(800,800,P3D);
  sphereDetail(5);
  background(255);
  x = width/2;
  y = height;
  z = 0;
  
  tex=loadImage("teeth.jpg");
  textureMode(NORMAL);
  scary = createShape(BOX,100);
  scary.setTexture(tex);
  earth = createShape(SPHERE, 20);
}
  void draw(){

background(255);
pushMatrix();
  translate(mouseX,mouseY,x);
  //scary.rotateX(radians(1));
 //scary.rotateY(radians(1));
  shape(scary,0,0);
  //box(100);
  rectMode(CENTER);
  popMatrix();

  
  camera(mouseX, height/2, mouseY / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0);
  
  pushMatrix();  
  earth.rotateY(xx++*radians(1));
  translate(390,384,163);
  shape(earth, 0, 0);
  popMatrix();
  
}
