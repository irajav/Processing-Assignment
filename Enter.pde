class Enter
{
   float x = width/2;
   float y = height/2;
   int ang = 1;
   int ang2 = 1;
   int ang3 = 1;
    
  void enter()
  {
    ang += 1;
    ang2 += 2;
    ang3 += 3;
    
    noStroke();
    fill(#052F64);
    ellipse(x,y,100,100);
    fill(255);
    textSize(10);
    text("Click to enter", x-35, y+5);
    
    noFill();
    strokeWeight(7);
    
    stroke(#66A8FC);
    arc(x,y,120,120,radians(ang), radians(ang+180));
    stroke(#195BAF);
    arc(x,y,150,150,radians(-ang2+30), radians(-ang2 + 240));
    stroke(#8993A0);
    arc(x,y,180,180,radians(ang3),radians(ang3+300));
    stroke(#0A75FC);
    arc(x,y,210,210,radians(-ang2),radians(-ang2+280));
  }
}