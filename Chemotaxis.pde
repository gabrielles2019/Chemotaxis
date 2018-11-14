/* Chemotaxis by Gabby S.
 * It's not suppose to be anything, it just looks cool.
 */


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
     wick[i].move();
     wick[i].show();
  }
  for(int i = 0; i < free.length; i++) {
    free[i].show();
    free[i].move();
  }
 }  
 
class Bacteria  {   
   int myX,myY;
    Bacteria() {
      myX = 0+myY;
      myY = 0+myX;
    }
    
    void show() {
      fill(0+(int)(Math.random()*1000));
      ellipse(myX+(int)(Math.random()),myY,50,50);
      
    }
    
    void move() {
      myX = mouseX + (int)(Math.random()*90);
      myY = mouseY + (int)(Math.random()*90);
    }
} 
