class Welcome
{
  float x = width/2;
  float y = height/2;
  

  void welcome()
  {
    
    fill(0);
    noStroke();
    rect(0,0,width,height);
    f.frame();
    g.grid();
    textSize(15);
    fill(255);

    graph();

    message.message();
    
    if(mouseX > x-330 && mouseX < x-230 && mouseY > y-140 && mouseY < y-60) 
    {
      c.clock();
    }
    else if(mouseX > x-430 && mouseX < x-320 && mouseY > y+45 && mouseY < y+110 )
    {
      world.world();
    }
    else if(mouseX > x+160 && mouseX < x+255 && mouseY > y-140 && mouseY < y-60 )
    {
      scan.scan();
    }
    else if( mouseX > x+295 && mouseX < x+385 && mouseY > y+50 && mouseY < y+115)
    {
      fingerprint.fingerprint();
    }
    else
    {
      warning.warning();
    }
    
    
    weapons.weapons();
    
    
    
    button1();
    button2();
    button3();
    button4();
    

 
  }
  
  void button1()
  {
        
    stroke(#1F7BF0);
    noFill();
    translate(x-340, y-150);
    textSize(15);
    text("CLOCK", 45, 55);
    beginShape();
    vertex(30, 20);
    vertex(90, 20);
    vertex(110, 40);
    vertex(110, 80);
    vertex(50, 80);
    vertex(30, 60);
    endShape(CLOSE);



  }
  
  void button2()
  {
    
    translate(x-800, y-200);
    textSize(15);
    text("MAP", 55,55);
    beginShape();
    vertex(30, 20);
    vertex(90, 20);
    vertex(110, 40);
    vertex(110, 80);
    vertex(50, 80);
    vertex(30, 60);
    endShape(CLOSE);
    
  }
  
  void button3()
  {    
    translate(x-90, y-565);
    textSize(15);
    text("LAB SCAN", 35,55);
    beginShape();
    beginShape();
    vertex(30, 20);
    vertex(90, 20);
    vertex(110, 40);
    vertex(110, 80);
    vertex(50, 80);
    vertex(30, 60);
    endShape(CLOSE);
    
  }
  
  void button4()
  {
    
    translate(x-550, y-205);
    textSize(15);
    text("FINGER", 45,50);
    text("PRINT", 45,65);
    beginShape();
    vertex(30, 20);
    vertex(90, 20);
    vertex(110, 40);
    vertex(110, 80);
    vertex(50, 80);
    vertex(30, 60);
    endShape(CLOSE);
  }
  
  void graph()
  {
    
    line(x+340,40,x+340,260);
    line(x+340,260, x+560, 260);
    text("STATISTICS", x+400, 280);
    
    textSize(10);
    stroke(#1F7BF0);
    line(x+360,70, x+380,230);
    ellipse(x+360,70,5,5);
    text("90%", x+370, 70);
    
    line(x+380,230, x+410,110);
    ellipse(x+380,230,5,5);
    text("10%", x+390, 230);
    
    line(x+410,110, x+430, 130);
    ellipse(x+410,110,5,5);
    text("60%", x+400,110);
    
    line(x+430, 130, x+470, 100);
    ellipse(x+430, 130, 5,5);
    text("45%", x+440, 130);
    
    line(x+470,100, x+530, 180);
    ellipse(x+470,100,5,5);
    text("65%", x+480, 100);
    
    line(x+530, 180, x+550, 90);
    ellipse(x+530,180,5,5);
    text("30%", x+540, 180);
    ellipse(x+550, 90, 5,5);
    text("70%", x+560, 90);
  }
    


}