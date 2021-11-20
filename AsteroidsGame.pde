Spaceship bob;
Star[] s;
public void setup() 
{
  size(500, 500);
  background(0);
  bob = new Spaceship();
  s = new Star[200];
  for(int i = 0; i < s.length; i++)
     s[i] = new Star();
}
public void keyPressed() {
  if (key == 'a') {
    bob.turn(-5);
  }
  if (key == 'd') {
    bob.turn(5);
  }
  if (key == 'w') {
    bob.accelerate(0.07);
  }
  if (key == 's') {
    bob.accelerate(-0.07);
  }
  if (key == 'q') {
    bob.hyperspace();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < s.length; i++){
   s[i].draw();
  }
  bob.move();
  bob.show();
}
