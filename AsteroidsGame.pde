Spaceship bob;
Star[] s;
ArrayList <Asteroid> a;
ArrayList <Double> turning;
public void setup() 
{
  size(500, 500);
  background(0);
  bob = new Spaceship();
  s = new Star[200];
  for(int i = 0; i < s.length; i++)
     s[i] = new Star();
  a = new ArrayList <Asteroid>();
  for(int i = 0; i < 15; i++) {
     a.add(new Asteroid());
     a.get(i).accelerate(Math.random()*2);
  }
  turning = new ArrayList <Double>();
  for(int i = 0; i < 15; i++) {
     turning.add(Math.random()*10-5);
  }
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
  for(int i = 0; i < a.size(); i++){
   a.get(i).move(turning.get(i));
   a.get(i).show();
   if(dist((float)bob.getmyCenterX(), (float)bob.getmyCenterY(), (float)a.get(i).getmyCenterX(), (float)a.get(i).getmyCenterY()) < 30) {
     a.remove(i);
     turning.remove(i);
   }
  }
  bob.move();
  bob.show();
}
