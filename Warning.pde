class Warning
{
  void warning()
  {
    int x = width/2;
    int y = height/2;
    color c = color(255,137,216);
    color c2 = color(random(0,255), random(0,137), random(0,216));
    int[] balls = {15, 15, 15, 15, 15, 15, 
                     15, 15, 15, 15};
    
    stroke(c);
    line(x-80, y-250, x-160, y-140);
    stroke(c);
    line(x-80, y-250, x+80, y-250);
    stroke(c);
    line(x+80, y-250, x+160, y-140);
    stroke(c);
    line(x-160, y-140, x+160, y-140);
    
    stroke(c);
    line(x-75, y-245, x-150, y-145);
    stroke(c);
    line(x-75, y-245, x+75, y-245);
    stroke(c);
    line(x+75, y-245, x+150, y-145);
    stroke(c);
    line(x-150, y-145, x+150, y-145);
    
    fill(c);
    textSize(25);
    text("WARNING!", x-45, y-200);
    
    fill(c2);
    for(int i = 0; i < balls.length; i++)
    {
      ellipse(x-85+(i*20), y-180, balls[i], balls[i]);
    }
    
        display();
    
  }
  
  void display()
  {
    image(img2, 610, 168, 20, 20);
  }
}