void setup()
{
  //your code here
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
}

class SnowFlake
{
  int x, y;
  Boolean isMoving;
  SnowFlake()
  {
  	x = (int)(Math.random()*300);
  	y = (int)(Math.random()*300);
  	isMoving = true;
  }
  void show()
  {
  	fill(255);
    ellipse(x, y, 2, 2);
  }
  void lookDown()
  {
    if(get(x,y+2) != color(0,0,0))
    {
    	isMoving = false;
    }
    else
    {
    	isMoving = true;
    }
  }
  void erase()
  {
  	fill(0);
  	ellipse(x, y, width, height);
  }
  void move()
  {
    //your code here
  }
  void wrap()
  {
    //your code here
  }
}