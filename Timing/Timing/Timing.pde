Raindrops [] lol= new Raindrops[400];  //creating array of Raindrops
int score = 0;  //declaring score
int index = 1;  //declaring index
int ancientT = 0;  //declaring ancientT
Catcher bucket;  //declaring new Catcher

void setup () {
  size (500, 500);
  for (int i = 0; i < lol.length; i++) {
    lol[i] = new Raindrops(color(0, 0, 255), random(width), 0);
  }
  bucket = new Catcher (color(255, 100, 0));  //defining bucket
<<<<<<< HEAD
=======
  textSize (50);
  textAlign (CENTER);
>>>>>>> Deletion of unnecessary folders
}

void draw () {
  background (0); 
<<<<<<< HEAD
  println ("The score is: " + score);  //printing the score
=======
  text ("Your score is: " + score, width/2, 50);  //printing the score
>>>>>>> Deletion of unnecessary folders
  for (int i = 0; i < index; i++) {  //showing rain and making rain fall and making rain check for bucket within certain parameters
    lol[i].showRain();
    lol[i].fall();
    lol[i].checkCatch(bucket);
  }
  if (millis()-ancientT > 3000) {  //adding a time aspect that makes a new drop fall every 3 seconds
    index++;
<<<<<<< HEAD
    ancientT = millis();  //setting ancientT to millis to reset it and make the difference 0 once more 
=======
    ancientT = millis();  //setting ancientT to millis to reset it and make the difference 0 once more
>>>>>>> Deletion of unnecessary folders
  }
  bucket.showCatcher();  //making bucket appear
}

<<<<<<< HEAD

=======
>>>>>>> Deletion of unnecessary folders
