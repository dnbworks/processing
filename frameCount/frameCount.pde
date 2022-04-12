void setup() {
  size(600, 400);
  smooth();
}

void draw() {
  background(126);
  fill(frameCount, 225-(frameCount/2.0), 128);
  rect(50+(2*frameCount), 
      75+(frameCount/5.0),
      100+frameCount,
      200-frameCount);
}
