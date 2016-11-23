float x,y,z;
float rotation = PI/48;
PImage tex;
PShape scary;

void setup(){
  size(800,800,P3D);
  background(255);
  x = width/2;
  y = height;
  z = 0;
  
  tex=loadImage("teeth.jpg");
  textureMode(NORMAL);
  scary = createShape(BOX,100);
  scary.setTexture(tex);
}
  void draw(){

background(255);
  translate(mouseX,mouseY,x);
  //scary.rotateX(radians(1));
 //scary.rotateY(radians(1));
  shape(scary,0,0);
  //box(100);
  rectMode(CENTER);
  translate(mouseX+200,mouseY-300,mouseX+0);
  sphere(60);
  translate(mouseY+2,mouseX+0, mouseX+0);
  sphere(60);
  
  camera(mouseX, height/2, mouseY / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0);
}