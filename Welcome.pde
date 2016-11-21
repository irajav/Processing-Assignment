class Welcome
{
  void welcome()
  {
    fill(0);
    noStroke();
    rect(0,0,width,height);
    f.frame();
    
    noFill();
    beginShape();
    vertex(30, 20);
    vertex(90, 20);
    vertex(110, 40);
    vertex(110, 80);
    vertex(50, 80);
    vertex(30, 60);
    
    endShape(CLOSE);
        
  }
}