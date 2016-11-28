class Fingerprint
{
    float x = width/2;
  float y = height/2;
  
  void fingerprint()
  {
    
        noStroke();
      fill(#C7E1FA);
      rect(x-110,y-10,140,200);
      image(img3, x-110,y-10, 140,200);
  }
}