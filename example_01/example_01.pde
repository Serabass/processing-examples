int count = 340;
int step = 360 / count;
void setup() {
  size(displayWidth, displayHeight);
  rectMode(CENTER);
}

void draw() {
  int f = frameCount;
  background(255);
  stroke(0);
  pushMatrix();
  translate(width / 2, height / 2);
  rotate(radians(f) / 4);
  for (int i = 0; i < 360; i+=step) {
    pushMatrix();
      rotate(radians(i));
      translate(0, 200);
      pushMatrix();
        rotate(radians(f));
        pushMatrix();
          rotate(sin(radians(f + i)) * cos(radians(f + i)));
          rect(0, 0, 100, 50);
          ellipse(0, 0, 20, 20);
        popMatrix();
      popMatrix();
    popMatrix();
  }
  popMatrix();
}

