float[] x;
float[] y;

void setup() {
  size(1000, 200);
  y = new float[height*width];
  x = new float[height*width];
  for (int i = 0; i < y.length; i = i+1) {
    y[i] = random(height);
  }
  for (int i = 0; i < x.length; i = i+1) {
    x[i] = random(width);
  }
  smooth();
  frameRate(60);
}

void draw() {
  background(255);
  noStroke();
  fill(0);
 
    for (int i = 0; i < y.length; i++) {
      ellipse(x[i], y[i], 1, 1);
      y[i] -=5;
      
      if (y[i]<0) {
        y[i] = random(height, height*2);
        x[i] = random(width);
      }
      
      if (mousePressed) {
        if (x[i]>=pmouseX && x[i]<=mouseX) {
          y[i] = mouseY;
        }
      }
    }
  }
