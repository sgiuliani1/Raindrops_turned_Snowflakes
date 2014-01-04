class Raindrops {  //declaring datatypes for this class
  int d;
  int c;
  PVector where;
  PVector grav;
  PVector velo;

  Raindrops(color newC, float a, float b) {  //defining datatypes and declaring datatypes to be defined in the "Timing" tab
    d = 20;
    c = newC;
    where = new PVector (a, b);
    grav = new PVector (0, random(1, 10));
    velo = new PVector (.00002, 0);
  }

  void showRain() {  //making rain go
    fill(c);
    ellipse (where.x, where.y, d, d);
  }

  void fall() {  //making rain fall
    grav.add(velo);
    where.add(grav);
    if (where.y > height) {
      where.y = 0;
    }
  }
   
  void checkCatch(Catcher bucket) {  //checking for catcher an making rain go somewhere else if it hits catcher 
    if (dist(where.x, where.y, mouseX, bucket.b) < d/2 + bucket.d/2) {
      where.set(random(width), 0);
      score++;
    }
  }
}


