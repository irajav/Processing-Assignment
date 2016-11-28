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
Fingerprint fingerprint;
Weapons weapons;

  int time;
  int imageIndex = 0;
  int totalTime = 3000;
  

boolean b;

String[] file = {"weapon1.png", "weapon2.png", "weapon3.png", "weapon4.png", "weapon5.png"};
PImage[] images = new PImage[file.length];

void setup()
{
  fullScreen();
  frameRate(10);
  
  b = false;
  img = loadImage("world.png");
  img2 = loadImage("skeleton.jpg");
  img3 = loadImage("fingerprint.png");

  
  for(int i = 0; i < 200; i++)
  {
    myStars[i] = new Stars(random(width), random(height));
  }
  
  
  
      time = millis();
    
      for(int i = 0; i<file.length; i++)
    {
      images[i] = loadImage(file[i]);
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
  fingerprint = new Fingerprint();
  weapons = new Weapons();
  
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

  