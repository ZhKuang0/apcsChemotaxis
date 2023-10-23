Walker[] Chemo;
void setup() {
  size(500,500);
  Chemo = new Walker[100];
  for(int i = 0; i < Chemo.length; i++) {
    Chemo[i] = new Walker();
  }
}
void draw() {
  background(#ffffff);
  for(int i = 0; i < Chemo.length; i++) {
    Chemo[i].show();
    Chemo[i].taxis();
  }
}
class Walker {
   int x, y, rgb;
   Walker() {
     x = (int)(Math.random()*465 +25);
     y = (int)(Math.random()*465 +25);
     rgb = #00cccc;
  }
  void taxis() {
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
    ellipse(x,y,10,10);
  }
}
