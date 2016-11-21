class Stars
{
  float x = 0;
  float y = 0;
  
  Stars(float _x, float _y)
  {
    x = _x;
    y = _y;
  }
  
  void show()
  {
    display();
  }
  
  void display()
  {
    fill(127);
    stroke(255);
    strokeWeight(1);
    
    beginShape();
    vertex(x, y-6.25);
    vertex(x+1.75, y-2.5);
    vertex(x+5.875, y-1.875);
    vertex(x+2.875, y+0.875);
    vertex(x+3.625, y+5);
    vertex(x, y+3.125);
    vertex(x-3.625, y+5);
    vertex(x-2.875, y+0.875);
    vertex(x-5.875, y-1.875);
    vertex(x-1.75, y-2.5);
    endShape(CLOSE);
  }
}