class Scan
{
  float x = width/2;
  float y = height/2 + 200;
  
  void scan()
  {
    fill(0);
    rect(x-140,y-300, 220,360);
    
    
    stroke(255);
    
    //head
    ellipse(x-30,y-260, 40,50);
    
    //body
    beginShape();
    vertex(x-60,y-225);
    vertex(x, y-225);
    vertex(x+12, y- 200);
    vertex(x+12, y-170);
    vertex(x-72, y-170);
    vertex(x-72, y-200);
    vertex(x-60, y-225);
    endShape();
    
    ellipse(x-30, y-160, 50,5);
    ellipse(x-30, y-150, 50, 5);
    ellipse(x-30, y-140, 50,5);
    
  //  beginShape();
    
    
    
    stroke(255,137,216);
    line(x-120, y-300, x-120, y+60);
    line(x-100, y-300, x-100, y+60);
    line(x-80, y-300, x-80, y+60);
    line(x-60, y-300, x-60, y+60);
    line(x-40, y-300, x-40, y+60);
    line(x-20, y-300, x-20, y+60);
    line(x, y-300, x, y+60);
    line(x+20, y-300, x+20, y+60);
    line(x+40, y-300, x+40, y+60);
    line(x+60, y-300, x+60, y+60);
    
    
    line(x-140, y-280, x+80, y-280);
    line(x-140, y-260, x+80, y-260);
    line(x-140, y-240, x+80, y-240);
    line(x-140, y-220, x+80, y-220);
    line(x-140, y-200, x+80, y-200);
    line(x-140, y-180, x+80, y-180);
    line(x-140, y-160, x+80, y-160);
    line(x-140, y-140, x+80, y-140);
    line(x-140, y-120, x+80, y-120);
    line(x-140, y-100, x+80, y-100);
    line(x-140, y-80, x+80, y-80);
    line(x-140, y-60, x+80, y-60);
    line(x-140, y-40, x+80, y-40);
    line(x-140, y-20, x+80, y-20);
    line(x-140, y, x+80, y);
    line(x-140, y+20, x+80, y+20);
    line(x-140, y+40, x+80, y+40);
    
    
    
    
    
  }
}