int ancient = 0;
int current = 0;
int timeChange = 0;
int d = 20;
void setup () {
  size (500, 500); 
  noStroke ();
}

void draw () {
  background (0);
  current = millis();
  timeChange = current - ancient;
  if (timeChange >= 2000) {
    fill (random(255), random(255), random(255));
    ellipse (random(width), random(height), d, d);
    ellipse (random(width), random(height), d, d);
    ellipse (random(width), random(height), d, d);
    ellipse (random(width), random(height), d, d);
    ellipse (random(width), random(height), d, d);
    ellipse (random(width), random(height), d, d);
    ellipse (random(width), random(height), d, d);
    ancient = current;
  }
}

