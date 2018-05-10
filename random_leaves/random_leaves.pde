float angle;
float len;

void setup() {
  size(700, 700);
  tree();
}

void draw() { 
}

void mousePressed() {
  tree();
}

void tree() {
  background(50, 100, 150);

  stroke(118, 86, 12);
  strokeWeight(50);
  line(width/2, height, width/2, height/2);

  len = random(90, 100);
  stroke(255);
  translate(width/2, height*0.7);
  branch(len);
}

void branch(float len) {  
  strokeWeight(random(1, 10));
  stroke(random(50, 70), random(100, 190), random(50, 70));
  line (0, 0, 0, -len);
  translate(0, -len);
  if (len > 4) {
    pushMatrix();
    rotate(random(PI/4, PI/2));
    branch(len*0.78);
    popMatrix();
    pushMatrix();
    rotate(-(random(PI/4, PI/2)));
    branch(len*0.78);
    popMatrix();
  }
}