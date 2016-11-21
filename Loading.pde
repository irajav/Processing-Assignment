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
        wel.welcome();
      }
      else
      {
        loadingbar();
        
      }

  }
  
  void loadingbar()
  {
      stroke(255);
      noFill();
      rect(200,200,200,20);
      
      noStroke();
      fill(255,100);
      w += 5;
      rect(200,200,w,20);
    
  }
  
  

}