int startX = 230;
int startY = 35;
int endX = 230;
int endY = 35;
int startX2 = 230;
int startY2 = 35;
int endX2 = 230;
int endY2 = 35;
int y = 0;
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
  background(7,11,33);
  image(photo,-60,y);
  lightning();
  lightning2();
}
void lightning()
{
    while (endX < 500)
  {
    startX = endX;
    startY = endY;
    endX = endX + (int)(Math.random()*10);
    endY = endY + (int)(Math.random()*19)-9;
    stroke((int)(Math.random()*56)+120,(int)(Math.random()*56)+180,255);
    line(startX,startY,endX,endY);
  }
}

void lightning2()
{
      while (endX2 > 0)
  {
    startX2 = endX2;
    startY2 = endY2;
    endX2 = endX2 + (int)(Math.random()*10)-9;
    endY2 = endY2 + (int)(Math.random()*19)-9;
    stroke((int)(Math.random()*56)+120,(int)(Math.random()*56)+180,255);
    line(startX2,startY2,endX2,endY2);
  }
}

void mousePressed()
{
   startX = 230;
   startY = 35;
   endX= 230;
   endY = 35;
   startX2 = 230;
   startY2 = 35;
   endX2 = 230;
   endY2 = 35;
   y = (int)(Math.random()*5)+1;
   redraw();
}