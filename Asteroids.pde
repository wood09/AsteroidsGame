class Asteroid extends Floater  
{
  public Asteroid() {
     myColor = 0;
     corners = 4;
     xCorners = new int[]{16,16,-16,-16};
     yCorners = new int[]{16,-16,-16,16};
     myCenterX = Math.random()*500;
     myCenterY = Math.random()*500;
     myPointDirection = Math.random()*360;
     myXspeed = 0;
     myYspeed = 0;
  }
  public void move (double turnspeed)   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
    myPointDirection+=turnspeed;
  }   
  public double getmyCenterX() {
    return myCenterX;
  }
  public double getmyCenterY() {
    return myCenterY;
    }
}
