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
 fill(0,0,0);
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
  translate(x,y);
  rotate(-HALF_PI);
  text(axis2, 0, 0);
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

int c1 = 0;
int c2 = 190;
int c3 = 255;

String axis1 = "S P E E D";
String axis2 = "T H R U S T";

option option1 = new option();

void draw()
{
  //We need the background here to allow time + date boxes
  background(0);
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

  
  /*int sec = second();
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
  text(s,180,84);
  text(c1, 160, 84);
  s = String.valueOf(min);
  text(s, 113, 84);
  text(c1, 95, 84);
  s = String.valueOf(hr);
  text(s, 45, 84);
  s = String.valueOf(d);
  text(s, 45, 155);
  text(c2, 83, 155);
  s = String.valueOf(m);
  text(s, 90, 155); 
  text(c2, 130, 155);
  s = String.valueOf(y);
  text(s, 140, 155);*/
}

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
  
  if (mouseX > 700 && mouseX < 740 && mouseY > 370 && mouseY < 410) {
    c1 = 0;
    c2 = 255;
    c3 = 0;
    axis1 = "A C C E L E R A T I O N";
    axis2 = "F R I C T I O N";
  }
  
  if (mouseX > 750 && mouseX < 790 && mouseY > 370 && mouseY < 410) {
    c1 = 255;
    c2 = 0;
    c3 = 255;
    axis1 = "G - F O R C E";
    axis2 = "S P E E D";
  }
    
  if (mouseX > 40 && mouseX < 220 && mouseY > 250 && mouseY < 369) {
    option1.message();
  }
  
  if (mouseX > 40 && mouseX < 220 && mouseY > 379 && mouseY < 498) {
    option1.message();
  }
  
  if (mouseX > 40 && mouseX < 220 && mouseY > 508 && mouseY < 627) {
    option1.message();
  }
  
  if (mouseX > 40 && mouseX < 220 && mouseY > 637 && mouseY < 756) {
    option1.message();
  }
}

//maybe insert titles under graph ie. speed, thrust etc
//test1