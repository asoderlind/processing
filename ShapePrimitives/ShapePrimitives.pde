/**
 * Shape Primitives. 
 * 
 * The basic shape primitive functions are triangle(),
 * rect(), quad(), ellipse(), and arc(). Squares are made
 * with rect() and circles are made with ellipse(). Each 
 * of these functions requires a number of parameters to 
 * determine the shape's position and size. 
 */

class Lucia {
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

}

size(640, 360);
background(0);
noStroke();

Lucia lucias[];
lucias = new Lucia[10];

for (int i=1; i < 10; i++) {
 lucias[i] = new Lucia(i*100, 100);
}

for (int i=1; i < 10; i++) {
 lucias[i].spawn();
}
