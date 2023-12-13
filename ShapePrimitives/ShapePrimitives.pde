/**
 * Shape Primitives. 
 * 
 * The basic shape primitive functions are triangle(),
 * rect(), quad(), ellipse(), and arc(). Squares are made
 * with rect() and circles are made with ellipse(). Each 
 * of these functions requires a number of parameters to 
 * determine the shape's position and size. 
 */
 speed = 5;
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
    
    Lucia(int cordx, int cordy) {
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
      fill(255);
      triangle(xtop, ytop, xleft, yleft, xright, yright);
      fill(255, 240, 233);
      ellipse(xcirc, ycirc, xrad, yrad);
    }
    
    public void move() {
      xtop = xtop + speed;
      xleft = xleft + speed;
      xright = xright + speed;
      xcirc = xcirc + speed;
      
      if (keyPressed()) 

        
      fill(255);
      triangle(xtop, ytop, xleft, yleft, xright, yright);
      fill(255, 240, 233);
      ellipse(xcirc, ycirc, xrad, yrad);
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
   lucias[i] = new Lucia(i*100, 200);
   lucias[i].spawn();
  }
}

void draw() {
  
  background(0);
  for (int i=0; i < n; i++) {
     lucias[i].move();
  }

}
