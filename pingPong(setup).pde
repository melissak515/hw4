class Ball {
  float x, y;
  float vx, vy;
  float radius;
  color c;

  Ball(color c1) {
    x = random(width);
    y = random(height);
    radius = 20;
    vx = random(3, 5);
    vy = random(0, 2);
    c = c1;
  }

  void draw() {
    fill(c);
    ellipse(x, y, radius*2, radius*2);

    println(c);
  }

  void step() {
    x = x + vx;
    y = y + vy;
    if (x < radius || x > width-radius) {
      vx = -vx;
    }
    if (y < radius || y > height-radius) {
      vy = -vy;
    }
  }
}

class Paddle {
  int paddleX;
  int paddleY;
  int paddleHeight;
  int paddleWidth;

  Paddle(int x, int y, int h, int w) {
    paddleX = x;
    paddleY = y;
    paddleHeight = h;
    paddleWidth = w;
  }

  void draw() {
    fill(153);
    noStroke();
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
  }

  void step() {
    paddleY = mouseY - paddleHeight/2;
    paddleY = constrain(paddleY, 0, height-paddleHeight);
    float radius = 20;
    }
  }



Ball b;
Paddle p, p2;
void setup() {
  size(500, 500);
  noCursor();
  b = new Ball(color(255, 100, 0));
  p = new Paddle(20, 20, 58, 20);
  p2 = new Paddle(480, 20, 58, 20);

}

void draw() {
  background(100);
  b.draw();
  b.step();
  p.draw();
  p.step();
  p2.draw();
  p2.step();
}
