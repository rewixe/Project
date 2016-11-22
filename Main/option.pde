public class option {
 public void option1() 
 { 
   optionChoice = 1;
   stroke(0);
   fill(0);
   rect(305,245,340,518);
   textSize(12);
   String lines[] = loadStrings("status.txt");
   pushMatrix();
   translate(320,270);
   for (int i = 0 ; i < lines.length; i++) 
   { 
     fill(255,0,0);
     text(lines[i], 0,(270*((i+0.3)*0.05)));
   }
   
   popMatrix();
  }
  

 public void option2() 
 {
   optionChoice = 2;
   stroke(0);
   fill(0);
   rect(305,245,340,518);
   stroke(255, 0, 255);
   strokeWeight(1);
   noFill();
   rect(310,250,330,330,7);
  
   line(365, 250, 365, 580);
   line(420, 250, 420, 580);
   line(475, 250, 475, 580);
   line(530, 250, 530, 580);
   line(585, 250, 585, 580);
  
   line(310, 305, 640, 305);
   line(310, 360, 640, 360);
   line(310, 415, 640, 415);
   line(310, 470, 640, 470);
   line(310, 525, 640, 525);
} 

 
 public void option3() 
 {
   optionChoice = 3;
   stroke(0);
   fill(0);
   rect(305,245,340,518);
   
   if(starChoice == 1)
   {
     textSize(12);
     pushMatrix();
     translate(0,-340);
     star1.star1();
     popMatrix();
     String star1info[] = loadStrings("star1info.txt");
     pushMatrix();
     translate(315,420);
     for (int i = 0 ; i < star1info.length; i++) 
     { 
       fill(255,0,0);
       text(star1info[i], 0,(270*((i+0.3)*0.05)));
     }
     
     popMatrix();
   }
   
}
 
 public void option4() 
 {
   optionChoice = 4;
   stroke(0);
   fill(0);
   rect(305,245,340,518);
 }
  
} //end class