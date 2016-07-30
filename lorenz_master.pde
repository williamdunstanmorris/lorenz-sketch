//lorenz sketch is based on ordinary differential equations. This is a model in a non-linear system. 


// declare inital variables from the equation, and give them default values. Float is the like an integer, but can have a decimal place.
float x = 0.01;
float y = 0;
float z = 0;
//declare variables from the equation, but this time substituting characters we can't use in programming.
float a = 10; // a is used for sigma
float b = 28; // b is used for rho 
float c = 8.0/3.0; // c is used for beta

ArrayList<PVector> points = new ArrayList<PVector>();
//setup
void setup() {
  colorMode(HSB);
size(800, 600, P3D);

}

// we take the equation and use it in our draw function over time. Our time in processing is by frame
void draw() {
  background(0);
  float dt = 0.009;
  float dx = (a * (y - x)) * dt;
  float dy = (x * (b - z) - y)*dt;
  float dz = (x * y - c * z)*dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  points.add(new PVector(x,y,z));
  
//translate(0,0,-80);
translate(width/2, height/2);
scale(5);
stroke(255);
noFill();


float hu = 0;
beginShape();
for (PVector v : points) {
  stroke(hu, 255, 255);
  vertex(v.x,v.y,v.z);
  PVector offset = PVector.random3D();
  offset.mult(0.1);
  v.add(offset);
  hu += 0.2;
  if (hu > 255) {
  hu = 0;
  }
}
endShape();

}
