public class stars {
  public void star1()
  {
    String star1[] = loadStrings("star1.txt");
    pushMatrix();
    translate(315,605);
    for (int i = 0 ; i < star1.length; i++) 
    { 
      fill(255,0,0);
      text(star1[i], 0,(270*((i+0.3)*0.05)));
    }
    popMatrix();
  }
  
  
  public void star2()
  {
    String star2[] = loadStrings("star2.txt");
    pushMatrix();
    translate(315,605);
    for (int i = 0 ; i < star2.length; i++) 
    { 
      fill(255,0,0);
      text(star2[i], 0,(270*((i+0.3)*0.05)));
    }
    popMatrix();
  }
  
  
  public void star3()
  {
    String star3[] = loadStrings("star3.txt");
    pushMatrix();
    translate(315,605);
    for (int i = 0 ; i < star3.length; i++) 
    { 
      fill(255,0,0);
      text(star3[i], 0,(270*((i+0.3)*0.05)));
    }
    popMatrix();
  }
  
  
  public void star4()
  {
    String star4[] = loadStrings("star4.txt");
    pushMatrix();
    translate(315,605);
    for (int i = 0 ; i < star4.length; i++) 
    { 
      fill(255,0,0);
      text(star4[i], 0,(270*((i+0.3)*0.05)));
    }
    popMatrix();
  }
  
  
  public void star5()
  {
    String star5[] = loadStrings("star5.txt");
    pushMatrix();
    translate(315,605);
    for (int i = 0 ; i < star5.length; i++) 
    { 
      fill(255,0,0);
      text(star5[i], 0,(270*((i+0.3)*0.05)));
    }
    popMatrix();
  }
  
  public void star6()
  {
    String star6[] = loadStrings("star6.txt");
    pushMatrix();
    translate(315,605);
    for (int i = 0 ; i < star6.length; i++) 
    { 
      fill(255,0,0);
      text(star6[i], 0,(270*((i+0.3)*0.05)));
    }
    popMatrix();
  }
  
} //end class