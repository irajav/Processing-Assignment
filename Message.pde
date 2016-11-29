class Message
{
  float x2 = width-280;
  PFont font;
  
   void message()
   {
      font = loadFont("CalifornianFB-Reg-48.vlw");
      textFont(font, 30);
      fill(180);
      text(wel[wel_index],x2,720);
      
      // Decrement x
      x2 = x2 - 10;

      // If x is less than the negative width, 
      // then it is off the screen
      float w = textWidth(wel[wel_index]);
      if (x2 < -w+280) 
      {
        x2 = width-280; 
        wel_index = (wel_index + 1) % wel.length;
      }
   }
   
}