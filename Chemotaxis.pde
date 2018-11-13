Bacteria wick;
Bacteria free;
void setup()   
 {     
  size(1000,1000);
  frameRate(10);
 }   
 
void draw()   
 { 
   wick = new Bacteria();
   free = new Bacteria();
   wick.move();
   wick.show();
   free.move();
   free.show();
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
      myX = myY = (int)(Math.random()*50);
      myY = myX + (int)(Math.random()*50);
    }
 }
