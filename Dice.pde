int sum; // global var

void setup() {
      size(640, 700); 
      noLoop();
  }
  void draw()
  {
    sum = 0; 
    background(255, 255, 255);
    int inOne = 20; 
    int inTwo = 20; 
    
    for (int i = 0; i < 10; i++){
      
      for(int b = 0; b < 10; b++){
        Die some = new Die(inOne,inTwo); 
        some.show(); 
        some.roll(); 
      inOne+=60; 
      }
      inOne-= 600; 
      inTwo+=60;
    }
    text("The total sum of the dice roll is....  " + sum + "!", 200, 650); 
    
  }
  void mousePressed(){
      redraw();
  }
  class Die //models one single dice cube
  {
  int numDots, theX, theY; // constructors 
      Die(int x, int y) { 
        numDots =  (int)(Math.random()*6) + 1; 
         theX = x;
         theY= y;
         sum = sum + numDots; 
      }
      
      void roll(){
             fill(0, 0, 0);
         stroke(0, 0, 0);
         
         // for drawing 1 - 6 dots on the die, in that order
         if (numDots == 1){
           for (int u = 0; u <= numDots; u++){
             ellipse(theX + 25, theY + 25, 10,10);  
           }
         }
         else if (numDots == 2){
           for (int w = 0; w < 2; w++){
             ellipse(theX + 10, theY + 15, 10,10);
             theX += 25;
             theY += 20; 
           }
         } 
        else if (numDots == 3){
          for (int f = 0; f < 3; f++){
          ellipse(theX + 10, theY + 10, 10,10);
           theX += 15;
           theY += 15; 
          }
           
         }
         else if (numDots == 4){
           for (int d = 0; d < 2; d++){
             
             for (int k =0; k < 2; k++){
              ellipse(theX + 10, theY + 10, 10,10);
              theX += 30;
             }
             theX -= 60; 
             theY += 30; 
           }
         }
        else if (numDots == 5){
          ellipse(theX + 25, theY + 25, 10,10);
          for (int d = 0; d < 2; d++){
             
             for (int k =0; k < 2; k++){
              ellipse(theX + 10, theY + 10, 10,10);
              theX += 30;
             }
             theX -= 60; 
             theY += 30; 
          } 
           
        }
         else if (numDots == 6){
           for (int d = 0; d < 3; d++){
             
             for (int k =0; k < 2; k++){
              ellipse(theX + 10, theY + 10, 10, 10);
              theX += 30;
             }
             theX -= 60; 
             theY += 15; 
           }
         }
      }
      
      void show() { // drawing rect, the die
         fill(255, 255, 255);
         stroke(0, 0, 0);
         rect(theX,theY,50,50);
   
      } 
  }
