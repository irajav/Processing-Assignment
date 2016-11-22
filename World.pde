class World
{
  void world()
  {
    int x; 
    int y;
    int x2 = width/2;
    int y2 = height/2;
    color c = color(250, 197, 232);
    
    int dot = 5;
    color d = color(#FF2E2E);
    int tsize = 10;
    int dist = 3;
    

   // strokeWeight(4);
   
   stroke(255);
    for ( x = x2-174; x < x2+135; x+=20) 
    {
      for ( y = y2; y < y2+240; y+=20)
      {
        fill(c);
        rect(x,y,20,20);
      }
    }
          
        fill(color(random(0,255), random(0,137), random(0,216)));
        textSize(18);
        text("Infected Countries", x2-100, y2-10);
        
   image(img, x2-170, y2+10, 310, 230);
   noStroke();
   fill(d);
   textSize(tsize);
   
   pushMatrix();
   translate(x2-235, y2-60);

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
   popMatrix();
   
        

  }
  
 
  
  

  
  
}