float angle1 = 0;
float angle2 = PI;
float radius = 150;
float centerX = 350;
float centerY = 350;
int levels = 10;  // Change this number to set the number of levels
float angleIncrement1 = 0.03;
float angleIncrement2 = -0.03;
color[] colors;

void setup() {
  size(700, 700);
  background(0);
  colors = new color[levels + 1];
  for (int i = 0; i <= levels; i++) {
    colors[i] = color(random(255), random(255), random(255));
  }
  noFill();
}

void draw() {
  
  drawCircles(centerX, centerY, radius, levels, angle1, angle2);

  // Increment the angles to move the circles
  angle1 += angleIncrement1;
  angle2 += angleIncrement2;

  // Randomly change direction at intervals

}
void keyPressed() {
  if (key == ' ') {
    background(0);
    changeDirection();
    
  }
}
void drawCircles(float x, float y, float rad, int lvl, float ang1, float ang2) {
  if (lvl == 0) {
    return;
  }

  float innerRadius = rad / 2;
  float newRadius = rad * (1.0 - lvl * 0.1); // Scale radius based on level
  float nextLevel = lvl - 1;
  float newAngle1 = ang1 + PI/4;
  float newAngle2 = ang2 + PI/4;

  // Calculate positions for the next level circles
  float x1 = x + cos(ang1) * rad;
  float y1 = y + sin(ang1) * rad;
  float x2 = x + cos(ang2) * rad;
  float y2 = y + sin(ang2) * rad;

  stroke(colors[lvl]);
  ellipse(x1, y1, newRadius * 2, newRadius * 2);
  ellipse(x2, y2, newRadius * 2, newRadius * 2);

  // Draw line between centers of circles
  line(x1, y1, x2, y2);

  drawCircles(x1, y1, innerRadius, (int)nextLevel, newAngle1, newAngle2);
  drawCircles(x2, y2, innerRadius, (int)nextLevel, newAngle1, newAngle2);
}

void changeDirection() {
  angleIncrement1 = random(-0.05, 0.10);
  angleIncrement2 = random(-0.05, 0.05);
  for (int i = 0; i <= levels; i++) {
   colors[i] = color(random(255), random(255), random(255));
  }
}
