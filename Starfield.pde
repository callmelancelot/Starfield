Particle[] ball;
void setup()
{
	size(800,800);
  background(0);
  ball = new Particle[100];
  for(int i = 0; i<ball.length; i++){
    if(i==0){
      ball[i]= new OddballParticle();
    }else{
      ball[i] = new Particle();
    }
  }
}
void draw()
{
  background(0);
	for(int i = 0; i<ball.length; i++){
    ball[i].move();
    ball[i].show();
  }
}
class Particle
{
	double X,Y,Speed,Angle;
  int color1;
  Particle(){
    X = 400;
    Y = 400;
    Speed = 4;
    Angle = Math.random()*2*Math.PI;
    color1 = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    
  }
  void move(){
    X+=Math.cos(Angle)*Speed;
    Y+=Math.sin(Angle)*Speed;
  }
  void show(){
    fill(color1);
    ellipse((float)X,(float)Y,20,20);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  void show(){
    fill(195);
    ellipse((float)X,(float)Y,80,80);
  }
}
