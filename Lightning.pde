void setup()
{
  noLoop();
  size(600,600);
  strokeWeight(5);
}

int startX = 300;
int startY = 250;
int endX = 300;
int endY = 250;

void draw()
{
  background(10, 10, 10);
  fill(255);
  textAlign(CENTER);
  textSize(38);
  text("PEW PEW", 300, 100);
  stroke((int)(Math.random()*226),(int)(Math.random()*226),(int)(Math.random()*226));
  while (endX < 600){
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)((Math.random()*18)-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  fill(0);
  rect(80, 260, 90, 200);
  rect(80, 220, 230, 60);
}

void mousePressed()
{
  redraw();
  startX = 300;
  startY = 250;
  endX = 300;
  endY = 250;
}
