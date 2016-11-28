//import processing.sound.*;
//SoundFile satellite;

Stars[] myStars = new Stars[200];
Enter e;
Loading l;
Welcome wel;
Frame f;
Grid g;
PImage img;
PImage img2;
PImage img3;
Clock c;
World world;
Warning warning;
Scan scan;

boolean b;

String[] file = {"weapon1.jpg", "weapon2.jpg", "weapon3.png", "weapon4.png", "weapon5.png"};
PImage[] images = new PImage[file.length];

void setup()
{
  fullScreen();
  frameRate(10);
  
  b = false;
  img = loadImage("world.png");
  img2 = loadImage("skeleton.jpg");
  
  for(int i = 0; i < 200; i++)
  {
    myStars[i] = new Stars(random(width), random(height));
  }
  
  e = new Enter();
  l = new Loading();
  wel = new Welcome();
  f = new Frame();
  c = new Clock();
  world = new World();
  g = new Grid();
  warning = new Warning();
  scan = new Scan();
  
//  satellite = new SoundFile(this, "satellite.wav");


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

  