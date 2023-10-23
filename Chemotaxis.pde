Walker[] Chemo;
void setup() {
  size(500,500);
  Chemo = new Walker[100];
  for(int i = 0; i < Chemo.length; i++) {
    Chemo[i] = new Walker();
  }
}
void draw() {
  background(250,250,250);
  for(int i = 0; i < Chemo.length; i++) {
    Chemo[i].show();
    Chemo[i].taxis();
  }
}
class Walker {
   int x, y, rgb;
   Walker() {
     x = (int)(Math.random()*200+125);
     y = (int)(Math.random()*200+125);
     rgb = #00cccc;
  }
  void taxis() {
    if(x < 25)
      x += 10;
    else if(x > 475)
      x -= 10;
    if(y < 75)
      y += 10;
    else if(y > 425)
      y -= 10;
    if(mouseX > x)
      x += (int)(Math.random()*5)-1;
    else
      x += (int)(Math.random()*5)-3;
    if(mouseY > y)
      y += (int)(Math.random()*5)-1;
    else
      y += (int)(Math.random()*5)-3;
  }
  void show()
  {
    noStroke();
    fill(rgb);
    ellipse(x,y,20,20);
  }
}
