class Welcome
{
  float x = width/2;
  float y = height/2;
  
  void welcome()
  {
    fill(0);
    noStroke();
    rect(0,0,width,height);
    f.frame();
    textSize(15);
    fill(255);
    text("Welcome Human", x-100, y-200);
    
    buttons();

        
  }
  
  void buttons()
  {
        
    stroke(#1F7BF0);
    noFill();
    translate(x-340, y-150);
    beginShape();
    vertex(30, 20);
    vertex(90, 20);
    vertex(110, 40);
    vertex(110, 80);
    vertex(50, 80);
    vertex(30, 60);
    endShape(CLOSE);
    
    translate(x-800, y-200);
    beginShape();
    vertex(30, 20);
    vertex(90, 20);
    vertex(110, 40);
    vertex(110, 80);
    vertex(50, 80);
    vertex(30, 60);
    endShape(CLOSE);
    
    translate(x-90, y-565);
    beginShape();
    vertex(30, 20);
    vertex(90, 20);
    vertex(110, 40);
    vertex(110, 80);
    vertex(50, 80);
    vertex(30, 60);
    endShape(CLOSE);
    
    translate(x-550, y-205);
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