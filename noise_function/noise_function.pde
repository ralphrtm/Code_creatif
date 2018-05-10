int step = 1;
float lastx = -999;
float lasty = -999;
float y = 50; 
int borderx = 10;
int bordery = 10;
float ynoise = random(10);

void setup() {
  size(700, 200);
  background(0);
  
  for (int x = borderx; x <= width-borderx; x += step) {
    y = 10 + noise(ynoise)*200;
    if (lastx > -999) {
      stroke(255);
      strokeWeight(5);
      line(x, y ,lastx, lasty);
    }
    lastx = x;
    lasty = y;
    ynoise += 0.01;
    println(x, y, lastx, lasty);
  }
}