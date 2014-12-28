void setup() {
  size(450, 350);
  background(0);
  smooth();
  stroke(0, 0, 250, 90);
  noFill();
}
void draw() {
  fill(0, 9);
  rect(0, 0, width, height);
  noFill();
  ellipse(mouseX, mouseY, 50, 90);
}
