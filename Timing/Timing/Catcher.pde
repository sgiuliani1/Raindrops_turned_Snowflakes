class Catcher {  //defining the datatypes for this class
  int c;
  int d;
  float b;

  Catcher(color newC) {  //defining the datatypes  
    d = 50;
    c = newC;
<<<<<<< HEAD
    b=height-50;
=======
    b = height-50;
>>>>>>> Deletion of unnecessary folders
  }

  void showCatcher() {  //showing Catcher
    fill(c);
    ellipse (mouseX, b, d, d);
  }
}

