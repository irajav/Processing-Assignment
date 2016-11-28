
class Weapons
{

  void weapons()
  {


    int passedTime = millis() - time;
    
    image(images[imageIndex], 40,50, 180,180);
    
    if (passedTime > totalTime)
    {
      imageIndex++;
      time = millis();
    }
    
    if(imageIndex>file.length-1)
    {
      imageIndex=0;
    }
  }
}