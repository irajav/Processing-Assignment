class Loading
{
  float angle;
  float counter = 0;
  int w = 10;
  
  void loading()
  {
    
     
        
        
      noStroke();
      fill(20);
      rect(0,0,width,height);
      
      for(int i = 0; i <200; i++)
      {
        myStars[i].show();
      }
      

      
      if(w == 200)
      {
        welcome.welcome();
      }
      else
      {
        loadingbar();
        
      }

  }
  
  void loadingbar()
  {
    
   
    satellite.play();
    
      stroke(255);
      noFill();
      rect(width/2-100,250,200,20);
      
      noStroke();
      fill(random(0,255));
      w += 5;
      rect(width/2-100,250,w,20);
      
      textSize(60);
      text("LOADING....", width/2-140, height/2);
    
  }
  
  

}