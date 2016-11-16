//rollover graph points to get exact numbers + circles
//rollover timeline on the bottom to get more info

int [] enlistments;
PFont font;
float x = 25;
float y = 715;

PImage planes;
PImage navy;
PImage punch;
PImage ve;

void setup() {
  size(880, 740);
  Table stats = loadTable("enlistmentRecords2.csv");
  enlistments = new int [stats.getRowCount()];
  for (int i=0; i<stats.getRowCount(); i++) {
    enlistments[i] = stats.getInt(i, 1);
  }

  //images
  planes = loadImage("planes.jpeg");
  navy = loadImage("navy.jpg");
  punch = loadImage("punchcard.jpg");
  ve = loadImage("veday.jpeg");

  //font
  font = createFont("COMMUNIST.ttf", 32);
}

void draw() {
  background(166, 160, 155);

  //x axis numbers   
  stroke(255);   
  line(20, 60, 20, 700);
  stroke(255);   
  line(17, 60, 17, 700);
  fill(245);
  textSize(12);
  text("3,000,000", x, 80);
  text("2,500,000", x, 166);
  text("2,000,000", x, 262);
  text("1,500,000", x, 352);
  text("1,000,000", x, 446);
  text("500,000", x, 545);
  text("0", x, 633);
  //title
  fill(255);
  textFont(font, 25);
  text("US ARMY ENLISTMENT RECORDS 1938-1946", 94, 29);
  fill(249);
  textSize(12);
  text("[not inclusionary of the navy, marines, or coast guard]", 94, 46);

  //years y axis
  fill(255);
  textFont(font, 13);
  text("1938", 74, y);
  text("1939", 155, y);
  text("1940", 241, y);
  text("1941", 325, y);
  text("1942", 408, y);
  text("1943", 489, y);
  text("1944", 573, y);
  text("1945", 658, y);
  text("1946", 740, y);

  stroke(158, 140, 140);
  noFill();
  beginShape();
  for (int i = 0; i < enlistments.length; i++) {
    float x = map(i, 0, enlistments.length-1, 89, 753);
    float y = map(enlistments[i], 0, 3099999, 622, 75);

    //POINT LINES
    //stroke(255);
    //line(x-0,y, x+63,y);

    //gray lines
    stroke(177);
    line(x, 61, x, height+-47);   
    //bottom lines
    stroke(100);
    line(x, 717, x, height);
    //line graph
    stroke(78, 22, 22);
    vertex(x, y);
  }
  endShape();

  //circles
  stroke(231);
  noFill();
  ellipse(89, 621, 7, 7);
  ellipse(172, 613, 7, 7);
  ellipse(255, 561, 7, 7);
  ellipse(338, 428, 7, 7);
  ellipse(421, 88, 7, 7);
  ellipse(504, 297, 7, 7);
  ellipse(587, 477, 7, 7);
  ellipse(670, 473, 7, 7);
  ellipse(753, 509, 7, 7);

  //EVENTS
  fill(120, 61, 61);
  textSize(11);
  text("Germany Invades Poland", 164, 682);  //sept 1, 1939
  //text("France & England Declare War on Germany",0,0); //2 days later
  text("Peacetime Draft", 262, 641); //1940 sept
  text("Pearl Harbour", 371, 660); //dec10, 1941
  text("US Enters WWII", 417, 691); //day after
  text("Fall of Mussolini", 506, 679); //july 1943
  text("German Army Surrenders", 640, 661); //may7,1945
  text("End of WWII", 710, 686); //sept2 1945
  stroke(78, 22, 22);
  //germany -> poland
  line(226, 701, 231, 689);
  line(226, 701, 221, 689);
  //draft
  line(304, 701, 306, 648);
  line(303, 701, 302, 648);
  //pearl harbour
  line(406, 701, 408, 666);
  line(405, 701, 403, 666);
  //entering ww2
  line(430, 701, 433, 694);
  line(430, 701, 427, 694);
  //italy fall
  line(549, 701, 546, 686);
  line(549, 701, 552, 686);
  //german surrender
  line(700, 701, 703, 671);
  line(700, 701, 697, 671);
  //end ww2
  line(729, 701, 732, 689);
  line(729, 701, 725, 689);

  //rollovers + facts
  fill(255);
  textFont(font, 12);

  String draft = "[OCT 1940] The first peacetime draft in US history took effect in preparation for the possibility of the war. By the war’s end some 35 million men had registered for the draft and 10 million had entered the military. 6 million volunteered.";
  String invade = "[SEPT 1941] Two days after Germany invaded Poland, England and France declared war on Germany. American sentiment leaned heavily toward isolationism, holding onto memories of the Great Depression and the losses of WW1. Volunteers were scarce.";
  String pearl = "[DEC 1941] Japan bombed Pearl Harbour for 2 hours. Death tolls reached 2,300+ (1,117 men were lost from the SS Arizona alone). 29 Japanese planes (of 414) were destroyed, 74 damaged. Congress declared war on Japan the next day.";
  String enter = "[DEC 1941] Patriotism ran deep, and most of the nation believed in the 'fight against evil'. Not many men tried to dodge the draft; those that did were looked down upon harshly.";
  String italy = "[SEPT 1943] The same day, Hitler launched the occupation of Italy. Allied forces subsequently spent the rest of the war chasing German troops off Italian soil.";
  String g2 = "[MAY 1945] German High Command formally surrendered- America and Britain celebrate Victory in Europe (V-E) Day.";
  String end = "[SEPT 1945] The war came to an end when Japan formally surrendered.";
  String pearl2 = "Japanese bomber and fighter planes attacked the US fleet (damaging 29 ships, and sinking 9), but began the attack on the military airfields at Ford Island.";
  String navyt = "After the bombing of Pearl Harbour, many men were eager to serve their country. Navy recruitment offices in particular had lines going out the door.";
  String card = "Draftees' information was recorded using punch cards.";

  if (mouseX >160  && mouseX < 290 && mouseY > 670 && mouseY <690) {
    text(invade, 130, 263, 179, 233);
  } else if (mouseX>250 && mouseX<390 && mouseY>620 && mouseY<650) {
    image(punch,350,147);
    text(card, 360,378,361,100);
    text(draft, 128, 220, 179, 230);
  } else if (mouseX>370 && mouseX<450 && mouseY>650 && mouseY<665) {
    text(pearl, 146, 188, 182, 303);
    text(pearl2, 377, 533, 448, 570);
    image(planes, 372, 173);
  } else if (mouseX>417 && mouseX<500 && mouseY>675 && mouseY <700) {
    text(enter, 142, 179, 179, 233);
    text(navyt, 411,535,403,286);
    image(navy, 370,160);
  } else if (mouseX>506 && mouseX<600 && mouseY>670 && mouseY<690) {
    text(italy, 130, 240, 180, 230);
  } else if (mouseX>640 && mouseX<780 && mouseY>650 && mouseY<665) {
    text(g2, 298, 550, 499, 268);
    image(ve,63,119);
  } else if (mouseX>710 && mouseX<785 && mouseY>675 && mouseY<700) {
    text(end, 130, 240, 180, 230);
  }

  //number stats
  if (mouseX > 83 && mouseX < 97 && mouseY >619 && mouseY <629) {
    text("2,021", 92, 614);
    ellipse(89, 621, 30, 30);
  } else if (mouseX > 160 && mouseX < 184 && mouseY >606 && mouseY <616) {
    text("49,181", 190, 611);
    ellipse(172, 613, 35, 35);
  } else if (mouseX> 243 && mouseX< 265 && mouseY> 554 && mouseY< 564) {
    fill(255);  
    ellipse(255, 561, 120, 120);
    fill(166, 160, 155);
    text("348,683", 262, 559);
  } else if (mouseX> 318 && mouseX<345 && mouseY>408 && mouseY< 435) {
    fill(255);
    ellipse(338, 428, 250, 250);
    fill(166, 160, 155);
    text("1,094,781", 344, 427);
  } else if (mouseX> 409 && mouseX< 435 && mouseY> 76 && mouseY< 95) {
    fill(255);
    ellipse(421, 88, 600, 600);
    fill(166, 160, 155);
    text("3,030,407", 424, 86);
  } else if (mouseX>490 && mouseX<515 && mouseY>280 && mouseY<310) {
    fill(255);
    ellipse(504, 297, 425, 425);
    fill(166, 160, 155);
    text("1,839,363", 508, 296);
  } else if (mouseX>580 && mouseX<595 && mouseY>465 && mouseY<485) {
    fill(255);
    ellipse(587, 477, 200, 200);
    fill(166, 160, 155);
    text("819,757", 591, 472);
  } else if (mouseX>650 && mouseX< 680 && mouseY>465 && mouseY<485) {
    fill(255);
    ellipse(670, 473, 210, 210);
    fill(166, 160, 155);
    text("845,146", 674, 470);
  } else if (mouseX>740 && mouseX< 760 && mouseY>495 && mouseY<510) {
    fill(255);
    ellipse(753, 509, 140, 140);
    fill(166, 160, 155);
    text("635,301", 758, 507);
  }
}