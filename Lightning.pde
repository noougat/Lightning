int startX = 0;
int startY = 300;
int endX = 0;
int endY = 300;
PImage photo;

void setup()
{
  strokeWeight(5);
  size(500,500);
  photo = loadImage("regrets.jpg");
  noLoop();
}

void draw()
{
  image(photo, -60, 0);
  while (endX < 500)
  {
    startX = endX;
    startY = endY;
    endX = endX + (int)(Math.random()*10);
    endY = endY + (int)(Math.random()*19)-9;
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    line(startX,startY,endX,endY);
  }
}

void mousePressed()
{
   startX = 0;
   startY = 300;
   endX= 0;
   endY = 300;
   redraw();
}