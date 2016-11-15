public class option {
 public void message1() {
   stroke(0);
   fill(0);
   rect(305,245,340,518);
   System.out.print("test3");
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

 public void message2() {
   stroke(0);
   fill(0);
   rect(305,245,340,518);
   System.out.print("test2");
   String text2 = "this is a test for 2";
   fill(255,0,0);
   textSize(15);
   text(text2, 320, 270);
}
 
 public void message3() {
   stroke(0);
   fill(0);
   rect(305,245,340,518);
   System.out.print("test3");
}
 
 public void message4() {
   System.out.print("test4");
 }
  
}