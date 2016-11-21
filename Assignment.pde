Stars[] myStars = new Stars[200];
Enter e;

void setup()
{
  fullScreen();
  frameRate(10);
  
  for(int i = 0; i < 200; i++)
  {
    myStars[i] = new Stars(random(width), random(height));
  }
  
  e = new Enter();

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
  
}