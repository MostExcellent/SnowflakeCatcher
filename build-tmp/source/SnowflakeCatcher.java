import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SnowflakeCatcher extends PApplet {

SnowFlake[] snow = new SnowFlake[199];
public void setup()
{
  size(300,300);
  background(0);
  noStroke();
  for(int i = 0; i < snow.length; i++)
  {
  	snow[i] = new SnowFlake();
  }
}
public void draw()
{
  for(int i = 0; i < snow.length; i++)
  {
  	snow[i].move();
  	snow[i].wrap();
  	snow[i].show();
  	snow[i].erase();
  }
}
public void mouseDragged()
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
  public void show()
  {
  	fill(255);
    ellipse(x, y, d, d);
  }
  public void lookDown()
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
  public void erase()
  {
  	fill(0);
  	ellipse(x, y, d+1, d+1);
  }
  public void move()
  {
  	lookDown();
    if(isMoving)
    {
    	y++;
    }
  }
  public void wrap()
  {
    if(y > 300)
    {
    	x = (int)(Math.random()*300);
    	y = 0;
    }
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SnowflakeCatcher" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
