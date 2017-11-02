class guppy
{
  PImage fish;
  float x;
  float y;
  float dx;
  float dy;
  float life;
  float s;



  guppy(float xp, float yp)
  {
    x = xp;
    y = yp;
    dx = random(-3, 3);
    dy = random(-3, 3);
    life = 100;
  }
  
  void display ()
  {
    image(fish,0,0);
  }
  void update() {
    life--;
    s = map(life, 60, 0, 50, 0);
    
    //c = color(map(dist(mouseX,mouseY,x,y),0,100,255,0));
    if (x < s/2 || x > width-s/2) {
      dx *= -1;
    }
    
    if (y < s/2 || y > height-s/2) {
      dy *= -1;
    }
    
    x += dx;
    y += dy;
  }
}