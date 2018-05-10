class points {
  float rof, gof, bof;
  float r, g, b;
  float yof;
  float y;

  float i = 0;

  color col;

  points() {
    rof = random(100);
    gof = random(100);
    bof = random(100);

    yof = random(100);

    r = random(255);
    g = random(255);
    b = random(255);

    y = -500/4;
  }

  void display() {
    i++;

    rof += 0.01;
    gof += 0.02;
    bof += 0.03;

    r = 255*noise(rof);
    g = 255*noise(gof);
    b = 255*noise(bof);

    yof += 0.02;
    y = noise(yof)*(500/2);

    pushMatrix();

    translate(width/2, height/2);
    rotate(radians(i));
    stroke(r, g, b);
    strokeWeight(10);
    point(0, -y);
    fill(0, 30);

    popMatrix();
  }
}
