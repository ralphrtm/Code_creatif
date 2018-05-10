ArrayList<root> pathfinder;

void setup() {
  size(1000, 1000, P3D);
  //fullScreen();
  background(0);
  pathfinder = new ArrayList<root>();
  pathfinder.add(new root(new PVector(width/2, height), 40, random(-500, 500)));
}

void draw() {
  for (int i = 0; i < pathfinder.size(); i++) {
    root p = pathfinder.get(i);
    p.drawRoot();

    if (p.checkRadius == false) {
      pathfinder.remove(i);
    }
  }

  if (mousePressed) {
    background(0);
    for (int i = 0; i < pathfinder.size(); i++) {
      pathfinder.remove(i);
    }
    pathfinder.add(new root(new PVector(width/2, height), 40, random(-500, 500)));
    println(pathfinder.size());
  }
}