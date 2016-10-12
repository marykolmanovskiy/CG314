//mary kolmanovskiy
//homework week 6

import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioInput input;

//shoulders
float x = 700;
float x2 = 2;

//eyes
float e1=300;
float e2=500;

//mouth
float m1 =100;
float m2 =100;
float m3 =100;
float m4 =100;
float m5 =100;
float m6 =100;

//eyebrows
float b1= 100;
float b2= 100;

void setup() {
size(800,800);

minim = new Minim(this);
player = minim.loadFile("lance.mp3");
input = minim.getLineIn();

}

void drawExpression(){
  background (136,198,250);
  noStroke();
  
  fill (121,68,33); //BACK OF HAIR
  triangle(724, 542, 614, 305, 597, 426); //hair behind ear
  triangle(717, 429, 653, 569, 612, 352);
  ellipse (497, 283, 451,401);
  fill(240,160,106); //SKIN
  ellipse (481, 372, 442, 505); //bigger head
  ellipse (446, 444, 417,387); // smaller head jaw
  ellipse (675, 429, 191,192); //ear
  rect (458, 607, 85,114); //neck
  rect (373, 671, 282,145); //BODY
  ellipse (377, x+63, 160,207); //left shoulder
  ellipse (657, x+50, 156,183); //right shoulder
  
  fill(255); //EYES
  ellipse (354, 337, 144, 154); //eyeleft
  ellipse (509, 347, 144, 154); //eye right
  
  noStroke();
  fill (0); //EYES pupils
  ellipse (e1+93, 337, 36, 35); //eyeleft
  ellipse (e2+28, 337, 36, 35); //eyeright
  stroke (0);
  line (453, 409, 476, 434); //tired line
  
  noStroke();
  fill (241,161,106); //EYELID
  rect(281, 249, 317, 79);  //eyelid left
   
  stroke (121,68,33); //EYEBROWS
  strokeWeight (8);
  line (389, b1+141, 335, 234); //left
  line (444, b2+92, 499, 225); //right
 
  stroke(0); //MOUTH
  strokeWeight(1);
  line (415, 572, 360, 524); //mouthleft
  strokeWeight(1);
  line (415, 572, 456, 525); //mouth right
      fill(142,46,31);
  triangle(m1+359, m2+425, m3+258, m4+424, m5+315, m6+472); //open mouth
  
  line (425, 354, 417, 406); //NOSE
  line (388, 414, 417, 407);
  line (389, 414, 408, 452);
  
  noStroke();
  fill (121,68,33); //HAIR
  triangle(600, 386, 662, 158, 578, 164);
  triangle(575, 260, 512, 111, 633, 172);
  triangle(221, 369, 342, 125, 376, 152);
  triangle(435, 135, 350, 133, 347, 212);
  triangle(620, 133, 421, 111, 522, 212);
  triangle(498, 103, 390, 133, 402, 182);
  triangle(654, 454, 679, 168, 602, 264);
  triangle(621, 176, 710, 287, 664, 432);
  triangle(341, 174, 341, 125, 241, 257); 
}

void draw() {
  
  background (136,198,250);
  noStroke();
  
textSize (16);
text("click anywhere to hear his obnoxious voice", 50,55);
fill(0);
  
  fill (121,68,33); //BACK OF HAIR
  triangle(724, 542, 614, 305, 597, 426); //hair behind ear
  triangle(717, 429, 653, 569, 612, 352);
  ellipse (497, 283, 451,401);
  fill(240,160,106); //SKIN
  ellipse (481, 372, 442, 505); //bigger head
  ellipse (446, 444, 417,387); // smaller head jaw
  ellipse (675, 429, 191,192); //ear
  rect (458, 607, 85,114); //neck
  rect (373, 671, 282,145); //BODY
  ellipse (377, x+75, 160,207); //left shoulder
  ellipse (657, x+63, 156,183); //right shoulder
  
  fill(255); //EYES
  ellipse (354, 337, 144, 154); //eyeleft
  ellipse (509, 347, 144, 154); //eye right
  
  noStroke();
  fill (0); //EYES pupils
  ellipse (370, 337, 36, 35); //eyeleft
  ellipse (501, 337, 36, 35); //eyeright
  stroke (0);
  line (453, 409, 476, 434); //tired line
  
  noStroke();
  fill (241,161,106); //EYELID
  rect(281, 249, 317, 79);  //eyelid left
   
  stroke (121,68,33); //EYEBROWS
  strokeWeight (8);
  line (389, b1+121, 335, 234); //left
  line (444, b2+108, 499, 225); //right
 
  stroke(0); //MOUTH
  strokeWeight(1);
  line (415, 572, 360, 524); //mouthleft
  strokeWeight(1);
  line (415, 572, 456, 525); //mouth right

  
  line (425, 354, 417, 406); //NOSE
  line (388, 414, 417, 407);
  line (389, 414, 408, 452);
  
  noStroke();
  fill (121,68,33); //HAIR
  triangle(600, 386, 662, 158, 578, 164);
  triangle(575, 260, 512, 111, 633, 172);
  triangle(221, 369, 342, 125, 376, 152);
  triangle(435, 135, 350, 133, 347, 212);
  triangle(620, 133, 421, 111, 522, 212);
  triangle(498, 103, 390, 133, 402, 182);
  triangle(654, 454, 679, 168, 602, 264);
  triangle(621, 176, 710, 287, 664, 432);
  triangle(341, 174, 341, 125, 241, 257);     

  
  if (mousePressed){
      drawExpression();
  }

}




void mousePressed(){
  player.play();
}

void mouseReleased(){
  player.close();
  player = minim.loadFile("lance.mp3");
}