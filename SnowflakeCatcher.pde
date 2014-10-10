SnowFlake[] snow = new SnowFlake[199];
void setup()
{
  size(300,300);
  background(0);
  noStroke();
  for(int i = 0; i < snow.length; i++)
  {
  	snow[i] = new SnowFlake();
  }
}
void draw()
{
  for(int i = 0; i < snow.length; i++)
  {
  	snow[i].move();
  	snow[i].wrap();
  	snow[i].show();
  	snow[i].erase();
  }
}
void mouseDragged()
{
	//code
}

class SnowFlake
{
  int x, y, d;
  Boolean isMoving;
  SnowFlake()
  {
  	x = (int)(Math.random()*300);
  	y = (int)(Math.random()*300);
  	d = 2;
  	isMoving = true;
  }
  void show()
  {
  	fill(255);
    ellipse(x, y, d, d);
  }
  void lookDown()
  {
    if(get(x,y+(d+1)) != color(0,0,0))
    {
    	isMoving = false;
    	System.out.println("Not moving...");
    }
    else
    {
    	isMoving = true;
    	System.out.println("Moving...");
    }
  }
  void erase()
  {
  	fill(0);
  	ellipse(x, y, d, d);
  }
  void move()
  {
  	lookDown();
    if(isMoving)
    {
    	y++;
    }
  }
  void wrap()
  {
    if(y > 300)
    {
    	x = (int)(Math.random()*300);
    	y = 0;
    }
  }
}
class Blocker
{
	int x, y;
	Blocker()
	{
		x = mouseX;
		y = mouseY;
	}
	s
}