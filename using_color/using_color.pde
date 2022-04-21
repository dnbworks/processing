void setup() {
  size (700, 600);
  smooth();
  
  color slate = color(65, 190, 110);
  color yellow = color(210, 210, 65);
  color orange = color(195, 80, 45);
  
  background(slate);
  
  fill(yellow);
  ellipse(200, 300, 250, 400);
  fill(slate);
  ellipse(200, 300, 150, 250);
  fill(yellow);
  ellipse(200, 300, 50, 100);
  
  fill(orange);
  ellipse(500, 300, 250, 400);
  fill(slate);
  ellipse(500, 300, 150, 250);
  fill(orange);
  ellipse(500, 300, 50, 100);
}
