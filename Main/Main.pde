void setup()
{
  size(1000,800);
  background(0,0,0);
}


void drawDateBox()
{
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.03, height*0.06, width*0.2, height*0.06,7);
}

void drawTimeBox()
{
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.03, height*0.15, width*0.2, height*0.06,7);
}

void drawOptionBox()
{
  //set colour for outline
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.03, height*0.3, width*0.2, height*0.66, 7);
}

void drawIntroBox()
{
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.3, height*0.06, width*0.35, height*0.22, 7);
}

void drawMainScreen()
{
  
  stroke(0,190,255);
  noFill();
  rect(width*0.3, height*0.3, width*0.35, height*0.66, 7);
}

void drawGraphBox()
{
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.7, height*0.06, width*0.25, height*0.3, 7);
}

void drawButtons()
{
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.7, height*0.4, width*0.04, height*0.05, 7);
  rect(width*0.75, height*0.4, width*0.04, height*0.05, 7);
  rect(width*0.7, height*0.46, width*0.04, height*0.05, 7);
  rect(width*0.75, height*0.46, width*0.04, height*0.05, 7);
}

void drawRadar()
{
  stroke(0,190,255);
  fill(0,0,0);
  ellipse(width*0.825, height*0.8, 230, 230);
}

void dateAndTime()
{
  fill(0);
  noStroke();
  rect(width*0.035, height*0.05625, 100,-15);
  rect(width*0.035, height*0.14375, 100, -15);
  fill(0,190,255);
  textSize(15);
  text("T I M E", width*0.035, height*0.05625);
  text("D A T E", width*0.035, height*0.14375);
  
  int sec = second();
  int min = minute();
  int hr = hour();
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.
  
  fill(0,190,255);
  textSize(30);
  
  char c1 = ':';
  char c2 = '|';
  
  String s = String.valueOf(sec);
  text(s, width*0.18, height*0.105);
  text(c1, width*0.16, height*0.105);
  s = String.valueOf(min);
  text(s, width*0.113, height*0.105);
  text(c1, width*0.095, height*0.105);
  s = String.valueOf(hr);
  text(s, width*0.045, height*0.105);
  s = String.valueOf(d);
  text(s, width*0.045, height*0.19375);
  text(c2, width*0.083, height*0.19375);
  s = String.valueOf(m);
  text(s, width*0.090, height*0.19375); 
  text(c2, width*0.130, height*0.19375);
  s = String.valueOf(y);
  text(s, width*0.140, height*0.19375);
}

void drawGraph()
{
  float x = 720;
  float y = 255;
  
  stroke(255);
  line(730, 60, 730, 260);
  line(730, 260, 930, 260);
  fill(0,190,255);
  textSize(12);
  text(axis1, 730, 280);
  pushMatrix();
  translate(x,y);
  rotate(-HALF_PI);
  text(axis2, 0, 0);
  popMatrix();
}

void createGraph()
{
  frameRate(9);
  strokeWeight(1);
  stroke(c1, c2, c3);
  float x1, y1, x2, y2;
 
  x1 = width*0.71; //set coords to coords of zero point on graph in main sketch
  y1 = height*0.375;
  x2 = width*0.730;
  y2 = height*0.3125;
 
  for (int i = 0; i < 10; i++)
  {
    int k = (int) random((0.02*width)); //random number to be taken away to create coords
    //line(x1, y1, x2, y2);
    x1 = x1 + (0.02*width);
    x2 = x2 + (0.02*width);
    y1 = y2;
    y2 = y1 - k;
  
    line(x1, y1, x2, y2);
  }
}

void createRadar()
{
  float centrex; 
  float centrey; 
  float r = width*0.113;
  float[] x = new float[100];
  float[] y = new float[100];
  
  centrex = width*0.825;
  centrey = height*0.8;
    
  //background(0);
  //strokeWeight(0.3);
  stroke(0,200,0); 
  float t = millis()*0.0025; 
  for(int i = 0; i < 100; i++)
  {
    smooth();
    x[i] = (float) (centrex+r*cos(t - i*0.01)); 
    y[i] = (float) (centrey+r*sin(t - i*0.01));
    stroke(0, 200 - i * 2, 0); 
    line(centrex, centrey, x[i], y[i]);
  }  
}

void writeIntro()
{
  textSize(20);
  fill(0, 190, 255);
  smooth();
  String txt = "Welcome to the system interface.\nPlease select an option";
  text(txt, width*0.330, height*0.0875, width*0.250, height*0.15); 
}

void optionsButtons()
{
  stroke(0,190,255);
  fill(0,0,0);
  rect(40, 250, 180, 119, 7);
  rect(40, 379, 180, 119, 7);
  rect(40, 508, 180, 119, 7);
  rect(40, 637, 180, 119, 7);
}

void createPoints()
{
  noFill();
  if(optionChoice == 2)
  {
    ellipse(v1.x, v1.y, 30, 30);
    ellipse(v2.x, v2.y, 12, 12);
    ellipse(v3.x, v3.y, 24, 24);
    ellipse(v4.x, v4.y, 50, 50);
    ellipse(v5.x, v5.y, 30, 30);
    ellipse(v6.x, v6.y, 30, 30);
  }
}

void createMissiles()
{
  missile1 = loadImage("missile1.jpg");
  missile2 = loadImage("missile2.jpg");
  missile3 = loadImage("missile3.jpg");
  missile4 = loadImage("missile4.jpg");
  
  if(optionChoice == 4)
  {
    fill(0,190,255);
    textSize(25);
    stroke(0, 190, 255);
    //strokeWeight(5);
    rect(315, 255, 150, 209, 7);
    text("EXMPL-42X", 315, 494);
    image(missile1, 315, 255, 150, 209);
    rect(485, 255, 150, 209, 7);
    text("TST-TXT98", 485, 494);
    image(missile2, 485, 255, 150, 209);
    rect(315, 504, 150, 209, 7);
    text("US-2000Z", 315, 743);
    image(missile3, 315, 504, 150, 209);
    rect(485, 504, 150, 209, 7);
    text("KRAUT-44", 485, 743);
    image(missile4, 485, 504, 150, 209);
  }
}





PImage missile1, missile2, missile3, missile4;

PVector v1, v2, v3, v4, v5, v6;
{
  v1 = new PVector(380, 300);
  v2 = new PVector(580, 320);
  v3 = new PVector(450, 350);
  v4 = new PVector(400, 480);
  v5 = new PVector(530, 540);
  v6 = new PVector(540, 430);
}

int c1 = 0;
int c2 = 190;
int c3 = 255;

String axis1 = "S P E E D";
String axis2 = "T H R U S T";

option option1 = new option();
option option2 = new option();
option option3 = new option();
option option4 = new option();

stars star1 = new stars();
stars star2 = new stars();
stars star3 = new stars();
stars star4 = new stars();
stars star5 = new stars();
stars star6 = new stars();

int starChoice = 1;
int optionChoice = 1;
int missileChoice = 1;





void draw()
{
  //background(0);
  drawOptionBox();
  drawDateBox();
  drawTimeBox();
  drawMainScreen();
  drawIntroBox();
  drawRadar();
  drawGraphBox();
  drawButtons();
  optionsButtons();
  dateAndTime();
  writeIntro();
  createRadar();
  createGraph();
  drawGraph();
  createPoints();
  if(optionChoice == 4)
  {
    createMissiles();
  }
  
  //Star 1
  if (mouseX > (v1.x-15) && mouseX < (v1.x+15) && mouseY > (v1.y-15) && mouseY < (v1.y+15) && optionChoice == 2)
  {
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    star1.star1();
  }
  
  //Star 2
  if (mouseX > (v2.x-6) && mouseX < (v2.x+6) && mouseY > (v2.y-6) && mouseY < (v2.y+6) && optionChoice == 2)
  { 
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    star2.star2();
  }
  
  //Star 3
  if (mouseX > (v3.x-12) && mouseX < (v3.x+12) && mouseY > (v3.y-12) && mouseY < (v3.y+12) && optionChoice == 2)
  {
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    star3.star3();
  }
  
  //Star 4
  if (mouseX > (v4.x-25) && mouseX < (v4.x+25) && mouseY > (v4.y-25) && mouseY < (v4.y+25) && optionChoice == 2)
  {
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    star4.star4();
  }
  
  //Star 5
  if (mouseX > (v5.x-15) && mouseX < (v5.x+15) && mouseY > (v5.y-15) && mouseY < (v5.y+15) && optionChoice == 2)
  {
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    star5.star5();
  }
  
  //Star 6
  if (mouseX > (v6.x-15) && mouseX < (v6.x+15) && mouseY > (v6.y-15) && mouseY < (v6.y+15) && optionChoice == 2)
  {
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    star6.star6();
  }
  
  
  if (optionChoice == 4 && missileChoice == 1)
  {
    stroke(255,0,0);
    noFill();
    rect(315,255,150,209,7);
  }
  
  if (optionChoice == 4 && missileChoice == 2)
  {
    stroke(255,0,0);
    noFill();
    rect(485,255,150,209,7);
  }
  
  if (optionChoice == 4 && missileChoice == 3)
  {
    stroke(255,0,0);
    noFill();
    rect(315,504,150,209,7);
  }
  
  if (optionChoice == 4 && missileChoice == 4)
  {
    stroke(255,0,0);
    noFill();
    rect(485,504,150,209,7);
  }
} //end draw





void mouseClicked() {
  if (mouseX > 700 && mouseX < 740 && mouseY > 320 && mouseY < 360) {
    c1 = 0;
    c2 = 190;
    c3 = 255;
    axis1 = "S P E E D";
    axis2 = "T H R U S T";
  }
  
    if (mouseX > 750 && mouseX < 790 && mouseY > 320 && mouseY < 360) {
    c1 = 255;
    c2 = 0;
    c3 = 0;
    axis1 = "F U E L";
    axis2 = "D I S T A N C E";
  }
  
  if (mouseX > 700 && mouseX < 740 && mouseY > 370 && mouseY < 410) 
  {
    c1 = 0;
    c2 = 255;
    c3 = 0;
    axis1 = "A C C E L E R A T I O N";
    axis2 = "F R I C T I O N";
  }
  
  if (mouseX > 750 && mouseX < 790 && mouseY > 370 && mouseY < 410) 
  {
    c1 = 255;
    c2 = 0;
    c3 = 255;
    axis1 = "G - F O R C E";
    axis2 = "S P E E D";
  }
    
  if (mouseX > 40 && mouseX < 220 && mouseY > 250 && mouseY < 369) 
  {
    option1.message1();
  }
  
  if (mouseX > 40 && mouseX < 220 && mouseY > 379 && mouseY < 498) 
  {
    option2.message2();
  }
  
  if (mouseX > 40 && mouseX < 220 && mouseY > 508 && mouseY < 627) 
  {
    option3.message3();
  }
  
  if (mouseX > 40 && mouseX < 220 && mouseY > 637 && mouseY < 756) 
  {
    option4.message4();
  }
  
  //Star 1
  if (mouseX > (v1.x-15) && mouseX < (v1.x+15) && mouseY > (v1.y-15) && mouseY < (v1.y+15) && optionChoice == 2)
  {
    starChoice = 1;
  }
  
  
  //Star 2
  if (mouseX > (v2.x-6) && mouseX < (v2.x+6) && mouseY > (v2.y-6) && mouseY < (v2.y+6) && optionChoice == 2)
  {
    starChoice = 2;
  }
  
  
  //Star 3
  if (mouseX > (v3.x-12) && mouseX < (v3.x+12) && mouseY > (v3.y-12) && mouseY < (v3.y+12) && optionChoice == 2)
  {
    starChoice = 3;
  }
  
  //Star 4
  if (mouseX > (v4.x-25) && mouseX < (v4.x+25) && mouseY > (v4.y-25) && mouseY < (v4.y+25) && optionChoice == 2)
  {
    starChoice = 4;
  }
  
  //Star 5
  if (mouseX > (v5.x-15) && mouseX < (v5.x+15) && mouseY > (v5.y-15) && mouseY < (v5.y+15) && optionChoice == 2)
  {
    starChoice = 5;
  }
  
  //Star 6
  if (mouseX > (v6.x-15) && mouseX < (v6.x+15) && mouseY > (v6.y-15) && mouseY < (v6.y+15) && optionChoice == 2)
  {
    starChoice = 6;
  }
  
  if (mouseX > 315 && mouseX < 465 && mouseY > 255 && mouseY < 464 && optionChoice == 4)
  {
    missileChoice = 1;
  }
  
  if (mouseX > 485 && mouseX < 635 && mouseY > 255 && mouseY < 464 && optionChoice == 4)
  {
    missileChoice = 2;
  }
  
  if (mouseX > 315 && mouseX < 465 && mouseY > 504 && mouseY < 713 && optionChoice == 4)
  {
    missileChoice = 3;
  }
  
  if (mouseX > 485 && mouseX < 635 && mouseY > 504 && mouseY < 713 && optionChoice == 4)
  {
    missileChoice = 4;
  }
} //end mouseClicked()