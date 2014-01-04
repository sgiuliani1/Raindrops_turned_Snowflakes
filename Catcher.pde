class Catcher {  //defining the datatypes for this class
  int c;
  int d;
  float b;

  Catcher(color newC) {  //defining the datatypes  
    d = 50;
    c = newC;
    b = height-50;
  }

  void showCatcher() {  //showing Catcher
    fill(c);
    ellipse (mouseX, b, d, d);
  }
}

