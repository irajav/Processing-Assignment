
class Weapons
{
  PFont font;

  void weapons()
  {
    

  font = loadFont("CalifornianFB-Reg-48.vlw");
  textFont(font, 20);
   fill(#1F7BF0);

    int passedTime = millis() - time;
    
  //  stroke(#1F7BF0);
 //   noFill();
//    rect(60,50,180,180);
    image(images[imageIndex], 60,50, 180,180);
    text(guns[index],250,100); 
 

    
    if (passedTime > totalTime)
    {
      imageIndex++;
      index++;
      time = millis();
    }
    
    if(imageIndex>file.length-1)
    {
      imageIndex=0;
    }
    
    if(index > guns.length -1 )
    {
      index = 0;
    }
  }
}