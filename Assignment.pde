Stars[] myStars = new Stars[200];
Enter e;
Loading l;

boolean b;

void setup()
{
  fullScreen();
  frameRate(10);
  
  b = false;
  
  for(int i = 0; i < 200; i++)
  {
    myStars[i] = new Stars(random(width), random(height));
  }
  
  e = new Enter();
  l = new Loading();

}

void draw()
{   
   noStroke();
   fill(0,20);
   rect(0,0,width,height);
  for(int i = 0; i <200; i++)
  {
    myStars[i].show();
  }
  
  e.enter();
  
   if(b == true)
  {
    l.loading();
  }
  
}
      void mousePressed()
  {
    if(mouseX > (width/2)-50 && mouseX < (width/2)+50 && mouseY > (height/2)-50 && mouseY < (height/2)+50)
    {
      b=!b;
    }
  }

  