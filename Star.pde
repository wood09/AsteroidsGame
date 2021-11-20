class Star //note that this class does NOT extend Floater
{
  int myColor;
  double myX, myY, mySize;
  Star() {
    myX = Math.random()*500;
    myY = Math.random()*500;
    myColor = color(200,200,200);
    mySize = (Math.random()*3)+3;
   }
   public void draw() {
     fill(myColor);
     ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
   }
    
}
