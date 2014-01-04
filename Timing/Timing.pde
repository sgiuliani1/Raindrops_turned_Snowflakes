Raindrops [] lol= new Raindrops[400];
int index = 1;
int ancientT = 0;

void setup () {
  size (500, 500);
  for (int i = 0; i < lol.length; i++) {
    lol[i] = new Raindrops(color(255, 0, 0), random(width), random(height));
  }
}

void draw () {
  background (0);
  println (millis());
  for (int i = 0; i < index; i++) {
    lol[i].showRain();
    lol[i].fall();
  }
  if (millis()-ancientT > 3000) {
    index++;
    ancientT = millis();
  }
}


