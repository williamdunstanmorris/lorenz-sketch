//lorenz sketch is based on ordinary differential equations. This is a model in a non-linear system. 


// declare inital variables from the equation, and give them default values. Float is the like an integer, but can have a decimal place.
float x = 0.01;
float y = 0;
float z = 0;
//declare variables from the equation, but this time substituting characters we can't use in programming.
float a = 10; // a is used for sigma
float b = 28; // b is used for rho 
float c = 8.0/3.0; // c is used for beta

//setup
void setup() {
size(400, 300, P3D);
background(0);
}

// we take the equation and use it in our draw function over time. Our time in processing is by frame
void draw() {
  float dt = 0.01;
  float dx = (a * (y - x)) * dt;
  float dy = (x * (b - z) - y)*dt;
  float dz = (x * y - c * z)*dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;
  println(x,y);
  
stroke(225);
translate(width/2, height/2);
point(x,y,z);
}
