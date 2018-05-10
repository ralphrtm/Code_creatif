int step = 10;
float lastx = -999;
float lasty = -999;
float y = 50; 
int borderx = 10;
int bordery = 10;

void setup() {
  size(700, 200);
  background(0);
  
  for (int x = borderx; x <= width-borderx; x += step) {
    y = bordery + random(height - 2*bordery);
    if (lastx > -999) {
      stroke(255);
      strokeWeight(5);
      line(x, y ,lastx, lasty);
    }
    lastx = x;
    lasty = y;
  }
}
