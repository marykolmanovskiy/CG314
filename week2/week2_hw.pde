
void setup() {
size(550, 600);
smooth();
strokeWeight(2);
background(209);
ellipseMode(RADIUS);
for (int y = 0; y<=height; y+=10){
  for (int x= 0; x<+width; x+=100){
    ellipse(x, y, 100, 20);
    
  }
}
fill(255, 204, 153);
stroke(255);
for (int y = 0; y<=height; y+=50){
  for (int x=0; x<+width; x+=77){
    ellipse(x, y, 77,50);
  }
}
}
void draw(){

// Body
noStroke();                 
fill(0);                    // Set fill to black
rect(219, 215, 110, 233);    // Main body
ellipse(324,407,40,40);          //left leg
curve(-101, 73, 320, 434, 425, 51, -378, -522);  //tail
fill(255,102,102);             // pibk
rect(215, 205, 118, 17);      // collar
fill(255, 255, 102);                      //yellow
ellipse(275, 226, 25,25);   //bell
//ears
fill(0);                     //black
triangle(364, 152, 367, 43, 304, 110);
triangle(313, 183, 199, 49, 193, 109);
// Head
fill(0);
rect(278, 117, -5, -96);     //antenna
fill(255,102,102);
ellipse(275, 15, 7, 7);  
fill(0);                    // Set fill to black
ellipse(276, 155, 100, 60);  // Head
fill(255);                  // Set fill to white
ellipse(320, 150, 25, 25);  // left eye
ellipse(235, 150, 25, 25);  // right eye
fill(0);                    // Set fill to black
ellipse(315, 150, 3, 12);    // left Pupil
ellipse(240, 150, 3, 12);   // right pupil
fill(255,102,102);                  // pink
ellipse(277, 175, 7, 3);    // nose
fill(255, 102, 102);                  // pink
ellipse(220, 188, 13, 13);    //blush on left
ellipse(333,188, 13, 13);    // blush on right
fill(255);                       //white
triangle(266, 192, 289, 192, 277, 184);
triangle(266, 192, 289, 192, 277, 199); //mouth ^
}
     