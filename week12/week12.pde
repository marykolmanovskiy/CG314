float x,y,z;
float rotation = PI/48;
PImage img;
PShape cat;

void setup() {
  size(800, 600, P3D); 
  sphereDetail(40);
  noStroke();
  img=loadImage("cat.jpeg");
  cat = createShape(SPHERE, 100);
  cat.setTexture(img); 
}
void draw() {
  background(0);
  lights();
  translate(width/2, height/2, 0);
  cat.rotateY(radians(1));
  shape(cat, 0, 0);
  
  camera(mouseX, height/2, (height/2) / tan(PI/6), mouseX, height/2, 0, 0, 1, 0);
  //CAMERA THAT CHANGES W/ MOUSEX like will's project
}







//void setup(){
//  size(600,600,P3D);
//  background(255,122, 98);
//  x = width/2;
//  y = height/2;
//  z = 0;
  
//  img=loadImage("cat2.jpg");
//  textureMode(NORMAL);
//  //catsq = createShape(BOX,100);
//  //catsq.setTexture(img);
//}

//void draw(){
// pointLight(255,235,215,0,height/2,1000);
//  //ambientLight(255,235,215);
// translate(x,y,z);
// rotateZ(rotation);
// rotateY(rotation/2);
// rectMode(CENTER);
// box(100);
// TexturedCube(cat2);
// //stroke(255);
// //noFill();
// //sphere(100);
// //sphereDetail(10);

 
// rotation+= PI/48;
 
// //z++;

//}