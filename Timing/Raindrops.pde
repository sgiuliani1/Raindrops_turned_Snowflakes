class Raindrops {
  int d;
  int c;
  PVector where;
  PVector grav;
  PVector velo;

  Raindrops(color newC, float a, float b) {
    d = 20;
    c = newC;
    where = new PVector (a, b);
    grav = new PVector (0, random(1, 10));
    velo = new PVector (.00002, 0);
  }

  void showRain() {
    fill(c);
    ellipse (where.x, where.y, d, d);
  }

  void fall() {
    grav.add(velo);
    where.add(grav);
    if (where.y > height) {
      where.y = 0;
    }
  }
   
//  void checkCatch(Catcher bucket) {
//    if (dist(where.x, where.y, mouseX, bucket.b) < d/2 + bucket.d/2) {
//      where.set(random(width), random(height));
//    }
//  }
}


