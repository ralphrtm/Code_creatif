class lines {
  float x, y, z, colR, colG, colB;

  float xoff = 0.0;
  float yoff = 0.0;
  float zoff = 0.0;
  float colRoff =0.0;
  float colGoff =0.0;
  float colBoff =0.0;

  lines () {
  }

  void display() {
    pushMatrix();
    translate(width*0.66, 0);

    xoff += .005;
    yoff += .006;

    colRoff += .001;
    colGoff += .002;
    colBoff += .003;

    x = noise(xoff) * 500;
    y = noise(yoff) * 500;

    colR = noise(colRoff) * 255;
    colG = noise(colGoff) * 255;
    colB = noise(colBoff) * 255;

    stroke(colR, colG, colB);
    strokeWeight(5);
    line(250, height/2, x, y);
    popMatrix();
  }
}
