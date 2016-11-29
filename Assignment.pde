import processing.sound.*;
SoundFile satellite;
SoundFile mothership;

Stars[] myStars = new Stars[200];
Enter e;
Loading l;
Welcome welcome;
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
Message message;

boolean b;
 
//weapons
String[] file = {
  "weapon1.png", 
  "weapon2.png", 
  "weapon3.png", 
  "weapon4.png", 
  "weapon5.png"
  };
PImage[] images = new PImage[file.length];

int time;
int imageIndex = 0;
int totalTime = 3000;

//gun descriptions
String[] guns = {
  " Name: Beretta Xtrema 2 \n Manufacturer: Fabbrica d'Armi Pietro Beretta \n Cartride: 12 gauge", 
  " Name: Blaser F3 \n Manufacturer: Blaser Jagdwaffen \n Cartridge: 12 gauge 20 gauge 28 gauge",
  " Name: Browning Auto-5 \n Manufactuer: Browning Arms Company \n Cartridge: 12 gauge 16 gauge 20 gauge",
  " Name: Browning Double Automatic Shot gun \n Manufacturer: Browning Arms Company \n Cartridge: 12 gauge",
  " Name: Heckler & Koch FABARM FP6 \n Manufacturer: Fabbrica Bresciana Armi \n Cartridge: 12 gauge"
  };
  
int index = 0;

//welcome message
String[] wel = {
  "Welcome back, Human!", 
  "Accessing data...",
  };
  
  int wel_index = 0;


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
  
  satellite = new SoundFile(this, "satellite.wav");
  mothership = new SoundFile(this, "mothership.wav");

  mothership.play();

  

  e = new Enter();
  l = new Loading();
  welcome = new Welcome();
  f = new Frame();
  c = new Clock();
  world = new World();
  g = new Grid();
  warning = new Warning();
  scan = new Scan();
  fingerprint = new Fingerprint();
  weapons = new Weapons();
  message = new Message();
  
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

  