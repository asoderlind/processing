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
  
  Lucia(int cord) {
      int xtop = cord;
      int ytop = cord + 20;
    
      int xleft = cord - 50;
      int yleft = cord + 100;
    
      int xright = cord + 30;
      int yright = cord + 100;
    
      int xcirc = cord;
      int ycirc = cord + 20;
      
      int xrad = cord - 50;
      int yrad = cord - 50;
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

int cord = 100;
int xtop = cord;
int ytop = cord + 20;

int xleft = cord - 50;
int yleft = cord + 100;

int xright = cord + 30;
int yright = cord + 100;

int xcirc = cord;
int ycirc = cord + 20;
int xrad = cord - 50;
int yrad = cord - 50;
      
fill(255);
triangle(xtop, ytop, xleft, yleft, xright, yright);
fill(255, 240, 233);
ellipse(xcirc, ycirc, xrad, yrad);

Lucia l;
l = new Lucia(100);
l.spawn();
