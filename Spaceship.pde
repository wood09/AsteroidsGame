class Spaceship extends Floater  
{   
    public Spaceship() {
      myColor = 0;
      corners = 4;
      xCorners = new int[]{16,-8,-2,-8};
      yCorners = new int[]{0,-8,0,8};
      myCenterX = 250;
      myCenterY = 250;
      myPointDirection = 180;
      myXspeed = 0;
      myYspeed = 0;
    }
    public void hyperspace() {
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
    }
    public double getmyCenterX() {
      return myCenterX;
    }
    public double getmyCenterY() {
      return myCenterY;
    }
    public double getmyPointDirection() {
      return myPointDirection;
    }
}
