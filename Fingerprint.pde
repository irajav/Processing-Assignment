class Fingerprint
{
  float x = width/2;
  float y = height/2;
  
  float w = 50;
  float speed = 20;
  float rectX = x-110;   
  
  void fingerprint()
  {
    
    noStroke();
    fill(#C7E1FA);
    rect(x-110,y-10,140,200);
    image(img3, x-110,y-10, 140,200);
    text("Flat Right Thumb", x-110, y-20);
      
          
    fill(#1F7BF0);      
    rect(rectX, y-10 , 20,200);
    
    rectX += speed;
    
    if(rectX+20 > x+20 || rectX < x-100)
    {
      speed = -speed;
    }
    
  }
}