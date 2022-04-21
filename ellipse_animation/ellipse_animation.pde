void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  //background(64);
  noFill();
  float r = (frameCount/5.0);
  float g = 255-(frameCount/5.0);
  float b = 2*r;
  stroke(r, g, b);
  float cx = 100+(frameCount/5.0);
  float cy = cx + 50;
  float w = 100-(frameCount/2.0);
  float h = 100+(frameCount/3.0);
  ellipse(cx, cy, w, h);
}
