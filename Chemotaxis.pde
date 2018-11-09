 void setup()   
 {     
  size(1000,1000);
  frameRate(10);
  myX = 40;
  myY = 50;
  wick = new Bacteria();
  free = new Bacteria();
 }   
 
 void draw()   
 { 
   wick.move();
   wick.show();
   free.move();
   free.show();
 }  
 
 class Bacteria    
 {     
    Bacteria() {
      
    }
    
    void show() {
      
    }
    
    void move() {
      
    }
 }
