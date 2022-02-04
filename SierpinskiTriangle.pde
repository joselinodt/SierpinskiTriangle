int base = 20;
public void setup()
{
  size(600,600);
}
public void draw()
{
  background(0);
  sierpinski(50,410,400);
  fill(255);
  text("Base: " + base, 250, 470);
}
public void keyPressed()
{
  if(base >= 0)
  {
  if(keyCode == UP)
  {
    base+=20;
  }
  else if(keyCode == DOWN)
  {
    base-=20;
  }
  }
}

public void sierpinski(int x, int y, int len) 
{
  if(len <= base)
  {
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  triangle(x, y, x + len/2, y - len, x + len, y);
  }
  else{
    len = len/2;
    sierpinski(x, y, len);
    sierpinski(x+len, y, len);
    sierpinski(x+(len/2), y-len, len);
  }
}
