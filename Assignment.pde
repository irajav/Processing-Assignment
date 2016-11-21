Stars[] myStars = new Stars[200];

void setup()
{
  fullScreen();
  frameRate(10);
  
  for(int i = 0; i < 200; i++)
  {
    myStars[i] = new Stars(random(width), random(height));
  }

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

  
}