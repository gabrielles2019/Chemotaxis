Bacteria[] wick;
Bacteria[] free;
void setup()   
 {     
  size(1000,1000);
  frameRate(100);
  wick = new Bacteria[1000];
  for(int i = 0; i < wick.length; i++) {
    wick[i] = new Bacteria();
  }
  free = new Bacteria[1000];
  for(int i = 0; i < free.length; i++) {
    free[i] = new Bacteria();
  }
 }   
 
void draw()  { 
  for(int i = 0; i < wick.length; i++) {
    wick[i].show();
    wick[i].move();
  }
  for(int i = 0; i < free.length; i++) {
    free[i].show();
    free[i].move();
  }
 }  
 
class Bacteria  {   
   int myX,myY;
    Bacteria() {
      myX = 40;
      myY = 50;
    }
    
    void show() {
      ellipse(myX,myY,50,50);
    }
    
    void move() {
      myX = myY + (int)(Math.random()*50);
      myY = myX + (int)(Math.random()*50);
    }
 }
