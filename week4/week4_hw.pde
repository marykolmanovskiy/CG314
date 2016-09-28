PImage shiro;
PImage lance;
PImage keith;
int a = 30;
int b = 45;
//lets void lines work
float theDistance;
//indentifies button as a variable
int button = 0;

void setup() {
  strokeWeight(3);
  stroke(255);
  size(800,800);
  background (190, 230, 223);
shiro = loadImage("shiro.png");
lance = loadImage("lance.png");
keith = loadImage("keith.png");
}


void lines(){
  if (mousePressed){
    theDistance = dist(mouseX,mouseY,pmouseX,pmouseY);
    strokeWeight(theDistance);
    line(mouseX,mouseY,pmouseX,pmouseY);
  } else {
    line(mouseX,mouseY,pmouseX,pmouseY);}
}
void draw () {
  textSize (16);
  text ("boxes", 34, 30);
  text ("calligraphy", 93, 130);
  text ("eraser", 183, 30);
  text ("clear", 263, 130);
  text ("pick your boy", 401, 30);

  fill(255, 102, 102);
  
  rect (a, b, 55, 55, 7);
  rect (a*3.5, b, 55, 55, 7);
  rect (a*6, b, 55, 55, 7);
  rect (a*8.5, b, 55, 55, 7);
  image(shiro,a*11, b, 89, 84);
  image(keith,a*13.5, b, 89, 84);
  image(lance,a*16.2, b, 89, 84);
  
//sets up the buttons
  if (mouseX > a && mouseX <100 && mouseY >b && mouseY <90){
    //box brush
    fill (255);
    rect (a, b, 55, 55, 7);
    button=1;}
  else if (mouseX > a*3.5 && mouseX <140 && mouseY >b && mouseY <97){
    //calligraphy brush
    fill (0);
    rect (a*3.5, b, 55, 55, 7);
    button=2;}
  else if(mouseX> a*6 && mouseX <215 && mouseY >b && mouseY <97){
    //eraser
    fill (255);
    rect (a*6, b, 55, 55, 7);
    button=3;}
  else if(mouseX> a*8.5  && mouseX< 260 && mouseY>b && mouseY <97){
    //clear
    fill(0);
    rect(a*8.5, b, 55, 55, 7);
    button=4;}
  else if(mouseX> a*11 && mouseX<369 && mouseY>b && mouseY<209){
    //shiro
    button=5;}
  else if(mouseX>a*13.5 && mouseX<445 && mouseY>b && mouseY<97){
    //keith
    button=6;}
  else if(mouseX>a*16.2 && mouseX<534 && mouseY>b && mouseY<97){
    //lance
    button=7;}
  
  
//button functions
//not sure why this first button won't work
if (button == 1 && mousePressed){
     float mappedValue=map(mouseX,1,width,1,20);
     rect(mouseX,mouseY,mappedValue,mappedValue);}
    
else if (button == 2 && mousePressed){
  theDistance = dist(mouseX, mouseY, pmouseX, pmouseY);
  fill(255);
  strokeWeight(theDistance);
  line(mouseX, mouseY, pmouseX, pmouseY);}
  
else if (button ==3 && mousePressed){
    stroke(190, 230, 223);
    fill(190, 230, 223);
    ellipse(mouseX,mouseY,20,20);}

//clearing canvas SOMETIMES clears the entire board permanently
else if (button ==4 && mousePressed){
    clear();
    background(190, 230, 223);}
    
else if (button == 5 && mousePressed){
    image(shiro,mouseX,mouseY, 100,100);}
    
else if (button == 6 && mousePressed){
    image(keith,mouseX,mouseY,100,100);}
    
else if (button == 7 && mousePressed){
    image(lance,mouseX,mouseY,100,100);}
  }