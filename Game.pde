Raindrops [] lol= new Raindrops[400];  //creating array of Raindrops
PImage laugh; //declaring images
PImage snow;
int lives = 5; //declaring lives variable and defining it
int score = 0;  //declaring score
int index = 1;  //declaring index
int s = 0;
int ancientT = 0;  //declaring ancientT
Catcher bucket;  //declaring new Catcher
boolean run, halo;  //creating boolean
import ddf.minim.*;  //including Minim
Minim sherlawk;  //declare various minims and audioplayers
Minim sunset;
AudioPlayer plays;
AudioPlayer more;

void setup () {
  snow = loadImage ("Background.jpg");  //make snow background
  for (int i = 0; i < lol.length; i++) {
    lol[i] = new Raindrops(random(width), 0);
  }
  rectMode (CENTER);
  textAlign (CENTER);
  run = false;
  halo = false;
  laugh = loadImage ("Laughing.jpg");  
  size (laugh.width, laugh.height);
  bucket = new Catcher (color(255, 100, 0));  //defining bucket
  sherlawk = new Minim (this);
  sunset = new Minim (this);
  plays = sherlawk.loadFile ("Sherlawk.mp3");
  more = sunset.loadFile ("DJ Contacreast - Golden Sunset.mp3");
}

void draw () {
  background (0);
  more.play();
  rectMode (CENTER);
  textSize (10);  
  fill (255, 0, 0);
  rect (width/2, height/2, 55, 55, 7);
  fill (0);
  text ("Start", width/2, height/2);
  if (run) {
    background (snow);
    textSize (50);
    fill (255);
    text ("Your score is: " + score, width/2, 50);  //printing the score
    for (int i = 0; i < index; i++) {  //showing rain and making rain fall and making rain check for bucket within certain parameters
      lol[i].showRain();
      lol[i].fall();
      lol[i].checkCatch(bucket);
      fill (255);
      textSize (40);
      text ("Lives:" + lives, width/2, 100);  //adding lives
      if (lol[i].where.y+lol[i].d/2 >= height) {
        lives -= 1;
      }
    }
    if (millis()-ancientT > 3000) {  //adding a time aspect that makes a new drop fall every 3 seconds
      index++;
      ancientT = millis();  //setting ancientT to millis to reset it and make the difference 0 once more
    }
    bucket.showCatcher();  //making bucket appear
  }
  if (score > 100) {
    halo = true;
  }
  if (lives <= 0) {
    halo = true;
  }
  if (halo) {
    background (laugh);
    tint (random(255), random(255), random(255), random(255)); 
    colorMode (HSB, 360, 100, 100);
    fill (s, 100, 100);
    s+= 5;
    text ("YOU LOSE", width/2, height/2);
    if (s > 360) {
      s = 0;
    }
    plays.play();
    sunset.stop();
  }
}

void mousePressed() {
  if (mouseX >= width/2-55 && mouseY >= height/2-55 && mouseX <= width/2+55 && mouseY <= height/2+55) {
    run = !run;
  }
}

void stop () {
  plays.close();
  sherlawk.stop();
  more.close();
  sunset.stop();
  super.stop();
}
