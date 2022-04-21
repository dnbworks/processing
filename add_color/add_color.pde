void setup() {
  size(650, 400);
  smooth();
  
  color lawnColor = color(65, 155, 60);
  color rustColor = color(200, 120, 60);
  
  fill(lawnColor);
  rect(50, 50, 100, 300);
  fill(rustColor);
  rect(200, 50, 100, 300);
  
  float r1 = red(lawnColor);
  float g1 = green(lawnColor);
  float b1 = blue(lawnColor);
  float r2 = red(rustColor);
  float g2 = green(rustColor);
  float b2 = blue(rustColor);
  float nr = r1+r2;
  float ng = g1+g2;
  float nb = b1+b2;
  
  color addClr = color(nr, ng, nb);
  fill(addClr);
  rect(350, 50, 100, 300);
}
