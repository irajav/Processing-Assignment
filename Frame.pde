class Frame
{
  void frame()
  {
    
    int xframe = 10;
    int yframe = 10;
 
    int x2frame = 20;
    int y2frame = 20;
    
    int cols = 15;
    int rows = 15;

    stroke(255,137,216);
    strokeWeight(1);
    noFill();
    
    line(xframe, yframe, width-xframe, yframe);
    line(xframe, yframe, xframe, height-yframe);
    line(xframe, height-yframe, width-xframe, height-yframe);
    line(width-xframe, height-yframe, width-xframe, yframe);
    
    line(x2frame, y2frame, width-x2frame, y2frame);
    line(x2frame, y2frame, x2frame, height-y2frame);
    line(x2frame, height-y2frame, width-x2frame, height-y2frame);
    line(width-x2frame, height-y2frame, width-x2frame, y2frame);
    
  }
}