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
  text("S P E E D", 730, 280);
  translate(x,y);
  rotate(-HALF_PI);
  text("T H R U S T", 0, 0);
}


void draw()
{
  //We need the background here to allow time + date boxes
  background(0,0,0);
  drawOptionBox();
  drawDateBox();
  drawTimeBox();
  drawMainScreen();
  drawIntroBox();
  drawRadar();
  drawGraphBox();
  drawButtons();
  dateAndTime();
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

//maybe insert titles under graph ie. speed, thrust etc