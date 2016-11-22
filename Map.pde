class World
{
  void world()
  {
    float x;
    float y;
    color c = color(250, 197, 232);
        
                        stroke(0);
          x = 60;
          while(x<360)
          {
            y = 60;
            while(y<300)
            {
              fill(c);
              rect(x,y, 40, 40);
              y=y+40;
            }
            x=x+40;
          }
          
        fill(color(random(0,255), random(0,137), random(0,216)));
        textSize(18);
        text("Show Infected Countries", 72, 320);
        
        mousePressed();
  }
  
  void display()
  {
    
    int dot = 5;
    color d = color(#FF2E2E);
    int tsize = 10;
    int dist = 3;
   
   image(img, 65, 66, 310, 230);
   noStroke();
   fill(d);
   textSize(tsize);
   ellipse(325,170,dot,dot);
   text("MANILA", 325+dist, 170);
   ellipse(308,150,dot,dot);
   text("CHINA", 308+dist,150);
   ellipse(280, 115, dot, dot);
   text("RUSSIA", 280+dist, 115);
   ellipse(224,112,dot,dot);
   text("NORWAY", 224+dist, 112);
   ellipse(173,210,dot,dot);
   text("BRAZIL",173+dist, 210);
   ellipse(140,150,dot,dot);
   text("USA", 140+dist,150);
   
   

  }
  
  
  void display2()
  {

   image(img, 65, 66, 310, 230);

  }
    
    
      void mousePressed()
  {
        
    if(mouseX > 70 && mouseX < 300 && mouseY < 325 && mouseY > 305 )
    {
              display();
    }
    else
    {
                 
            display2();
    }
  }
  
  

  
  
}