rond r;
lines l;
points p;

void setup() {
  size(1500, 500);
  background(0);
  
  r = new rond();
  l = new lines();
  p = new points();
}

void draw() {
  p.display();
  r.display();
  l.display();
  
  if (frameCount % 10 == 0) {
  fill(0, 7);
  noStroke();
  rect(0, 0, width, height);
  }
}
