void setup()
{
  size(1000,800);
  background(0,0,0);
}


void drawDateBox() //creates box for date
{
  strokeWeight(1);
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.03, height*0.06, width*0.2, height*0.06,7);
}

void drawTimeBox() //creates box for time
{
  strokeWeight(1);
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.03, height*0.15, width*0.2, height*0.06,7);
}

void drawOptionBox() //creates box for option buttons
{
  fill(0);
  noStroke();
  rect(50,200,140,35);
  fill(0,190,255);
  textSize(20);
  text("O P T I O N S", 67, 230);
  strokeWeight(1);
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.03, height*0.3, width*0.2, height*0.66, 7);
}

void drawIntroBox() //creates a box for introductory text
{
  strokeWeight(1);
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.3, height*0.06, width*0.35, height*0.22, 7);
}

void drawMainScreen() //creates main screen box
{
  strokeWeight(1);
  stroke(0,190,255);
  noFill();
  rect(width*0.3, height*0.3, width*0.35, height*0.66, 7);
}

void drawGraphBox() //creates box for graph
{
  strokeWeight(1);
  stroke(0,190,255);
  fill(0,0,0);
  rect(width*0.7, height*0.06, width*0.25, height*0.3, 7);
}

void drawButtons() //draws buttons which change graph
{
  strokeWeight(1);
  stroke(0,190,255);
  fill(0,0,0);
  fill(0,190,255);
  rect(width*0.7, height*0.4, width*0.04, height*0.05, 7);
  fill(0);
  text("1", width*0.715, height*0.435); //button 1
  fill(0,190,255);
  rect(width*0.75, height*0.4, width*0.04, height*0.05, 7);
  fill(0);
  text("2", width*0.765, height*0.435); //button 2
  fill(0,190,255);
  rect(width*0.7, height*0.46, width*0.04, height*0.05, 7);
  fill(0);
  text("3", width*0.715, height*0.495); //button 3
  fill(0,190,255);
  rect(width*0.75, height*0.46, width*0.04, height*0.05, 7);
  fill(0);
  text("4", width*0.765, height*0.495); //button 4
}

void drawRadar() //draws radar 
{
  strokeWeight(1);
  stroke(0,190,255);
  fill(0,0,0);
  ellipse(width*0.825, height*0.8, 230, 230);
  ellipse(width*0.825, height*0.8, 200, 200);
  ellipse(width*0.825, height*0.8, 170, 170);
  ellipse(width*0.825, height*0.8, 140, 140);
  ellipse(width*0.825, height*0.8, 110, 110);
  ellipse(width*0.825, height*0.8, 80, 80);
  ellipse(width*0.825, height*0.8, 50, 50);
  ellipse(width*0.825, height*0.8, 20, 20);
}

void dateAndTime() //draws the time and date
{
  strokeWeight(1);
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
  int day = day();
  int mon = month(); 
  int yr = year();   
  
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
  s = String.valueOf(day);
  text(s, width*0.045, height*0.19375);
  text(c2, width*0.083, height*0.19375);
  s = String.valueOf(mon);
  text(s, width*0.090, height*0.19375); 
  text(c2, width*0.130, height*0.19375);
  s = String.valueOf(yr);
  text(s, width*0.140, height*0.19375);
}

void drawGraph() //draws the graph axes
{
  strokeWeight(1);
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

void createGraph() //draws the graph line
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

    x1 = x1 + (0.02*width);
    x2 = x2 + (0.02*width);
    y1 = y2;
    y2 = y1 - k;
  
    line(x1, y1, x2, y2);
  }
}

void createRadar() //draws moving radar
{
  strokeWeight(1);
  float centrex; 
  float centrey; 
  float r = width*0.113;
  float[] xvals = new float[100];
  float[] yvals = new float[100];
  
  centrex = width*0.825;
  centrey = height*0.8;
  
  stroke(0,200,0); 
  float pos = millis()*0.0025; 
  for(int i = 0; i < 100; i++)
  {
    xvals[i] = (float) (centrex + r * cos(pos - i*0.01)); 
    yvals[i] = (float) (centrey + r * sin(pos - i*0.01));
    stroke(0, 200 - i * 2, 0); 
    line(centrex, centrey, xvals[i], yvals[i]);
  }  
}

void writeIntro() //writes introduction
{
  strokeWeight(1);
  textSize(20);
  fill(0, 190, 255);
  String txt = "Welcome to the system interface. Please select an option from the option box to begin";
  text(txt, width*0.330, height*0.0875, width*0.250, height*0.15); 
}

void optionsButtons() //draws buttons for the options
{
  strokeWeight(1);
  stroke(0,190,255);
  fill(0,0,0);
  fill(0,190,255);
  rect(width*0.040, height*0.3125, width*0.180, height*0.14875, 7);
  fill(0);
  text("STATUS", width*0.090, height*0.4); //option 1
  fill(0,190,255);
  rect(width*0.040, height*0.47375, width*0.180, height*0.14875, 7);
  fill(0);
  text("STAR\n MAP", width*0.100, height*0.5375); //option 2
  fill(0,190,255);
  rect(width*0.040, height*0.635, width*0.180, height*0.14875, 7);
  fill(0);
  text("STAR\nINFO", width*0.105, height*0.7); //option 3
  fill(0,190,255);
  rect(width*0.040, height*0.79625, width*0.180, height*0.14875, 7);
  fill(0);
  text("MISSILE\nSYSTEM", width*0.090, height*0.8625); //option 4
}

void createPoints() //creates the  points on the star map
{
  strokeWeight(1);
  noFill();
  if(optionChoice == 2)
  {
    ellipse(v1.x, v1.y, width*0.030, height*0.0375);
    ellipse(v2.x, v2.y, width*0.012, height*0.015);
    ellipse(v3.x, v3.y, width*0.024, height*0.03);
    ellipse(v4.x, v4.y, width*0.050, height*0.0625);
    ellipse(v5.x, v5.y, width*0.030, height*0.0375);
    ellipse(v6.x, v6.y, width*0.030, height*0.0375);
  }
}

void createMissiles() //creates the missile selection option
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
   strokeWeight(7);
   rect(width*0.315, height*0.31875, width*0.150, height*0.26125, 7);
   text("TYPE-77", width*0.315, height*0.6175);
   image(missile1, width*0.315, height*0.31875, width*0.150, height*0.26125);
   rect(width*0.485, height*0.31875, width*0.150, height*0.26125, 7);
   text("AIM-9X", width*0.485, height*0.6175);
   image(missile2, width*0.485, height*0.31875, width*0.150, height*0.26125);
   rect(width*0.315, height*0.63, width*0.150, height*0.26125, 7);
   text("ARCHER-11", width*0.315, height*0.92875);
   image(missile3, width*0.315, height*0.63, width*0.150, height*0.26125);
   rect(width*0.485, height*0.63, width*0.150, height*0.26125, 7);
   text("BRAUN-2X", width*0.485, height*0.92875);
   image(missile4, width*0.485, height*0.63, width*0.150, height*0.26125);
  }
}






PImage missile1, missile2, missile3, missile4; //used for images in ption 4

PVector v1, v2, v3, v4, v5, v6; //vectors for star map in option 2
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

String axis1 = "S P E E D"; //sets initial values for axes
String axis2 = "T H R U S T";

option optionMain = new option(); //creates object

stars starMain = new stars(); //creates object

int starChoice = 1; //creates variables for choice selection in options 2 and 4 and for choosing initial option
int optionChoice = 1;
int missileChoice = 1;





void draw()
{
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
  if(optionChoice == 4) //create missile put into if statement because it slows down the program significantly
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
    starMain.star1();
  }
  
  //Star 2
  if (mouseX > (v2.x-6) && mouseX < (v2.x+6) && mouseY > (v2.y-6) && mouseY < (v2.y+6) && optionChoice == 2)
  { 
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    starMain.star2();
  }
  
  //Star 3
  if (mouseX > (v3.x-12) && mouseX < (v3.x+12) && mouseY > (v3.y-12) && mouseY < (v3.y+12) && optionChoice == 2)
  {
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    starMain.star3();
  }
  
  //Star 4
  if (mouseX > (v4.x-25) && mouseX < (v4.x+25) && mouseY > (v4.y-25) && mouseY < (v4.y+25) && optionChoice == 2)
  {
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    starMain.star4();
  }
  
  //Star 5
  if (mouseX > (v5.x-15) && mouseX < (v5.x+15) && mouseY > (v5.y-15) && mouseY < (v5.y+15) && optionChoice == 2)
  {
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    starMain.star5();
  }
  
  //Star 6
  if (mouseX > (v6.x-15) && mouseX < (v6.x+15) && mouseY > (v6.y-15) && mouseY < (v6.y+15) && optionChoice == 2)
  {
    stroke(255, 0, 255);
    fill(0);
    rect(310,595,330,150,7);
    fill(255);
    starMain.star6();
  }
  
  //draws red box around selected missile in option 4
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
  //used to change the axes of the graph
  if (mouseX > 700 && mouseX < 740 && mouseY > 320 && mouseY < 360) 
  {
    c1 = 0;
    c2 = 190;
    c3 = 255;
    axis1 = "S P E E D";
    axis2 = "T H R U S T";
  }
  
  if (mouseX > 750 && mouseX < 790 && mouseY > 320 && mouseY < 360) 
  {
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
  
  //Used for buttons to select options
  if (mouseX > 40 && mouseX < 220 && mouseY > 250 && mouseY < 369) 
  {
    optionMain.option1();
  }
  
  if (mouseX > 40 && mouseX < 220 && mouseY > 379 && mouseY < 498) 
  {
    optionMain.option2();
  }
  
  if (mouseX > 40 && mouseX < 220 && mouseY > 508 && mouseY < 627) 
  {
    optionMain.option3();
  }
  
  if (mouseX > 40 && mouseX < 220 && mouseY > 637 && mouseY < 756) 
  {
    optionMain.option4();
  }
  
  //Used in the star map to select more infoormation about a star
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