class Grid
{
  void grid()
  {
    int cols = 10;
    int rows = 10;


    smooth ();
  
    for ( int i=1; i<cols; i++) {
      for ( int j=1; j<rows; j++) {
        fill ( 255);
        ellipse ( i*(width/cols), j*(height/rows), 1, 1);
      }
    }
  }
}