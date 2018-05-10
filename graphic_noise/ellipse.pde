class rond {
  float x, y, radius, colR, colG, colB, alpha;

  float xoff, yoff, radiusOff, colOff;

  float colRoff = random(100);
  float colGoff = random(100);
  float colBoff = random(100);

  rond() {
    xoff = random(width);
    yoff = random(height);
  }

  void display() {
    colRoff += .0011;
    colGoff += .0012;
    colBoff += .0013;
    
    colR = noise(colRoff) * 255;
    colG = noise(colGoff) * 255;
    colB = noise(colBoff) * 255;
    
    xoff += .009;
    yoff += .008;
    
    x = noise(xoff) * 500;
    y = noise(yoff) * 500;
    
    radiusOff += .003;    
    radius = noise(radiusOff) * 50;

    fill(colR, colG, colB);
    noStroke();
    ellipse(x, y, radius, radius);
   }
}
