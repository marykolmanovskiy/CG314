PImage ded;

void setup() {
  size (540, 303);
  ded = loadImage("ded.jpg");
}

void draw() {
  loadPixels();
  ded.loadPixels();
  for (int x = 0; x<width-1; x++) {
    for (int y = 0; y<height-1; y++) {
            int theIndex = x + y * width;
            int theIndex2 = x + 1 + y * width;
            float b1 = brightness(ded.pixels[theIndex]);
            float b2 = brightness(ded.pixels[theIndex2]);
            float diff = abs(b1 - b2);
            pixels[theIndex] = color(diff);
    }
  }
  updatePixels();
  ded.updatePixels();
}

//COOL LOOKIN THING
//void setup() {
//  size (600, 500);
//}

//void draw() {
//  loadPixels();
//  for (int x = 0; x<width; x++) {
//    for (int y = 0; y<height; y++) {
//      pixels[x + y * height] = color(y,250,x);
//    }
//  }
//  updatePixels();
//}

//LINEAR GRADIENT
//void setup() {
//  size (600, 500);
//}

//void draw() {
//  loadPixels();
//  for (int x = 0; x<width; x++) {
//    for (int y = 0; y<height; y++) {
//      pixels[x + y * width] = color(y,50,50);
//    }
//  }
//  updatePixels();
//}


//GRADIENT USING DIST
//void setup() {
//  size (600, 500);
//}

//void draw() {
//  loadPixels();
//  for (int x = 0; x<width; x++) {
//    for (int y=0; y<height; y++) {
//      float distance = dist(x, y, width/2, height/2); //takes pixels from halfway of canvas to end of canvas
//      float r = map(distance, 0, 300, 255, 0);
//      float g = map(mouseY, 0, height, 0, 50);
//      float b = map(mouseX, 0, width, 0, 100);


//      pixels[x + y * width] = color(r,100,100);
//    }
//  }
//  updatePixels();
//}