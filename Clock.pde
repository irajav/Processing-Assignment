
class Clock
{
  void clock()
  {
    int cx = width - 700;
    int cy = 450;
    float secondsRadius;
    float minutesRadius;
    float hoursRadius;
    color c = color(255,137,216);
    int h= hour();        // 0-23
    int m= minute();      // 0-59
    int s= second();  
    String h_disp = nf(h,2);
    String m_disp= nf(m,2);
    String s_disp= nf(s,2);  
    
    
    stroke(255);
  
    int radius = min(width, height) / 2;
    secondsRadius = radius * 0.4;
    minutesRadius = radius * 0.35;
    hoursRadius = radius * 0.35;
    
    
    stroke(c);
    noFill();
    arc(cx, cy, 100, 100, 0, 2*PI);
    
    stroke(c);
    strokeWeight(4);
    arc(cx,cy,120,120,0, 2*PI);
    
    stroke(157,35,117);
    strokeWeight(4);
    arc(cx,cy,125,125,0,2*PI);
    
    stroke(116, 112, 115);
    strokeWeight(6);
    arc(cx,cy,135,135, radians(20), radians(40));
    
    stroke(116,112,117);
    strokeWeight(6);
    arc(cx,cy,135,135, radians(50), radians(95));
    
    stroke(67,106,180);
    strokeWeight(6);
    arc(cx,cy,135,135, radians(105), radians(260));
    
    stroke(183,193,211);
    strokeWeight(6);
    arc(cx,cy,150,150, radians(70), radians(360));
    

    float map_s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
    float map_m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
    float map_h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
    
    // Draw the hands of the clock
    stroke(c);
    strokeWeight(1);
    line(cx, cy, cx + cos(map_s) * secondsRadius, cy + sin(map_s) * secondsRadius);
    strokeWeight(2);
    line(cx, cy, cx + cos(map_m) * minutesRadius, cy + sin(map_m) * minutesRadius);
    strokeWeight(5);
    line(cx, cy, cx + cos(map_h) * hoursRadius, cy + sin(map_h) * hoursRadius);
    
    // Draw the minute ticks
    strokeWeight(3);
    beginShape(POINTS);
    for (int a = 0; a < 360; a+=6) 
    {
      float angle = radians(a);
      float x = cx + cos(angle) * secondsRadius;
      float y = cy + sin(angle) * secondsRadius;
      vertex(x, y);
    }
    endShape();
    
    textSize(15);
    fill(c);
    text(h_disp+":" + m_disp + ":" + s_disp, cx-30, cy+5);
       
  }
  
}