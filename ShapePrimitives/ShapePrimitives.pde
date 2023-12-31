/**
 * Shape Primitives. 
 * 
 * The basic shape primitive functions are triangle(),
 * rect(), quad(), ellipse(), and arc(). Squares are made
 * with rect() and circles are made with ellipse(). Each 
 * of these functions requires a number of parameters to 
 * determine the shape's position and size. 
 */
 int speed = 5;
 class Lucia {
      int cordx;
      int cordy;
      int xtop;
      int ytop;
      int xleft;
      int yleft;
      int xright;
      int yright;
      int xcirc;
      int ycirc;
      int xrad;
      int yrad;
      boolean crown = false;
    
    Lucia(int cordx, int cordy, boolean crown_in) {
        crown = crown_in;
        xtop = cordx;
        ytop = cordy + 20;
        xleft = cordx - 50;
        yleft = cordy + 100;    
        xright = cordx + 30;
        yright = cordy + 100;    
        xcirc = cordx;
        ycirc = cordy + 20;      
        xrad = 50;
        yrad = 50;
    }
    
    public void spawn() {
     if (crown) {
          fill(255, 230, 220);
          triangle(xtop, ytop+20, xleft, yleft, xright, yright);
      }
      fill(255);
      triangle(xtop, ytop, xleft, yleft, xright, yright);
      fill(255, 240, 233);
      ellipse(xcirc, ycirc, xrad, yrad);
 
    }
    
    public void move() {

      if (keyPressed) {
        if (key == 'd') {
          xtop = xtop + speed;
          xleft = xleft + speed;
          xright = xright + speed;
          xcirc = xcirc + speed;
        } else if (key == 'a') {
          xtop = xtop - speed;
          xleft = xleft - speed;
          xright = xright - speed;
          xcirc = xcirc - speed;
        } else if (key == 's') {
          ytop = ytop + speed;
          yleft = yleft + speed;
          yright = yright + speed;
          ycirc = ycirc + speed;
        } else if (key == 'w') {
          ytop = ytop - speed;
          yleft = yleft - speed;
          yright = yright - speed;
          ycirc = ycirc - speed;
        }
      }

      fill(255);
      triangle(xtop, ytop, xleft, yleft, xright, yright);

      fill(255, 240, 233);
      ellipse(xcirc, ycirc, xrad, yrad);

      print(crown);
       if (crown == true) {
           fill(255, 255, 0);
            triangle(xtop, ytop-70, xleft, yleft-90, xright, yright-90);

      }
    }
  
}

Lucia lucias[];
int n = 5;

void setup() {
  size(640, 360);
  background(0);
  noStroke();
  
  lucias = new Lucia[n];
  for (int i=0; i < n; i++) {
    if (i == n-1) {
         lucias[i] = new Lucia(i*100, 200, true);
    } else {
         lucias[i] = new Lucia(i*100, 200, false);
    }
   lucias[i].spawn();
  }
}

void draw() {
  background(0);
  for (int i=0; i < n; i++) {
     lucias[i].move();
  }
}
