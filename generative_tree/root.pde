class root {
  PVector location, velocity;
  float radius;
  float angle, angleOff, locOff = random(-500, 500);
  float x, y, z;

  color c1 = color(101, 75, 46);
  color c2 = color(20, 148, 20);
  color c3 = color(148, 129, 43);
  color c4 = color(0, 86, 27);

  boolean checkRadius = true;

  root(PVector _location, float _radius, float _angle) {
    location = _location;
    velocity = new PVector(0, -1);
    radius = _radius;
    angleOff = _angle;
  }

  void update() {
    if (location.x > -10 & location.x < width + 10 & location.y > -10 & location.y < height + 10) {
      if (radius > 0.2) {    
        angleOff += 0.005;
        angle = 195*noise(angleOff); 

        x = cos(radians(angle));
        y = sin(radians(angle));
        z = tan(radians(angle));

        velocity = new PVector(x, -y, z);
        //velocity.limit(random(1,2));

        location.add(velocity);
      }
    }
  }

  void drawRoot() {
    update();

    if (radius < 1.7) {
      checkRadius = false;
      fill(c1);
      ellipse(location.x, location.y, 2, 2);
    }

    if (location.y < height*0.8) {
      leaf();
    }

    noStroke();
    color col = lerpColor(c1, c3, map(radius, 0, 10, 1, 0)); 
    fill(col, map(radius, 0, 62, 150, 50));

    ellipse(location.x, location.y, radius, radius);

    if (random(0, 1) < 0.012) {
      locOff += random(0.2);
      radius = radius*random(0.65, 0.70);
      pathfinder.add(new root(new PVector(noise(locOff+0.2)+location.x, noise(locOff)+location.y), radius, random(-500, 500)));
    }
  }

  void leaf() {
    if (random(0, 10) < 0.05) {
      pushMatrix();
      translate(0, 0, random(-200, 200));
      noStroke();

      color col = lerpColor(c1, c4, map(radius, 10, 0, 0, 1));
      fill(col, random(100, 200));
      float rad2 = random(20, 40);
      ellipse(location.x+random(10), location.y+random(0), rad2, rad2);

      if (random(0, 1) < 0.5) {
        color col2 = c1;
        fill(col2, random(100, 200));
        float rad = random(20);
        ellipse(location.x+random(50), location.y+random(50), rad, rad);
      }
      popMatrix();
    }
  }
}