float[] x = new float[5];
float[] y = new float[5];
float[] q = new float[5];
float e;
void mousePressed()
{
  for (int i=0; i<5; i++)
  {
    x[i]=random(width);
    y[i]=random(height);
    q[i]=random(-1,1);
  }
}
  
void setup()
{
  size(500, 500);
  frameRate(25);
  colorMode(HSB,255);
  noSmooth();
}

void draw()
{
  background(0);
  for (int i=0; i<width; i++)
  {
    for (int j=0; j<height; j++)
    {
      e=0;
      for (int k=0; k<5; k++)
      {
        e+=q[k]/sq(dist(i, j, x[k], y[k]));
      }
      stroke(int((128+atan(e*10000)*128/PI)/4)*4, 255, 255);
      point(i, j);
    }
  }
}
