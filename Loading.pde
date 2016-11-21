class Loading
{
  float angle;
  boolean loading = false;
  
  void loading()
  {
    noStroke();
    fill(20);
    rect(0,0,width,height);
    
    for(int i = 0; i <200; i++)
    {
      myStars[i].show();
    }
    

    rect(43,138,204,24);
    fill(255);
    int fillX = ((frameCount%500)/3*10);
    rect(246,140,fillX-205,20);

  
  
  translate(width/2, height/2);
  rotate(angle);
  strokeWeight(2);
  stroke(255);
  line(0,0,100,0);
  angle += 0.1;
  

  
  }
  

}