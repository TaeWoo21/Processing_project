void setup() 
{
  size(600, 800);
  background(255);
  
  noFill();
  strokeWeight(3);
  
  // Calyxes(꽃받침)
  stroke(0, 255, 0, 20);
  drawBezierCalyxes(250, 370, 210, 350, 450, 350, 0);
  stroke(0, 255, 150, 20);
  drawBezierCalyxes(350, 370, 215, 350, 150, 350, -50);

  // Stem(줄기)
  for(int x=300; x<=330; x=x+1) {
    stroke(0, 500-x, 150, 20);
    bezier(300, 300, x*1.2, 350, x/1.6, 600, 280, 750);
  }

  // Rose (장미꽃)
  stroke(255, 0, 0, 20);
  drawBezierRose(300, 100, 1, 0, 1, 300, 300, 300);
  drawBezierRose(150, 100, 1.5, 170, 1/1.9, 300, 300, 300);
  drawBezierRose(360, 60, 1, 170, 1, 300, 300, 300);

  stroke(255, 0, 100, 20);
  drawBezierRose(180, 170, 1.5, 0, 1/1.9, 300, 300, 300);
  drawBezierRose(200, 70, 1.1, 170, 1/1.2, 300, 300, 300);
  drawBezierRose(430, 80, 1/1.4, 170, 1.2, 300, 300, 300);
  drawBezierRose(420, 160, 1/1.2, 0, 1.1, 300, 300, 300);
  
  // Save *.PNG file
  saveFrame("PFlower.png");
}

void drawBezierRose(int start_x, int start_y, float control_rate1, int control_y1, float control_rate2, int control_y2, int end_x, int end_y)
{
  for(int i=200; i<=400; i=i+5) {
    bezier(start_x, start_y, i*control_rate1, control_y1, i*control_rate2, control_y2, end_x, end_y);
  }
}

void drawBezierCalyxes(int start_x, int start_y, int control_y1, int control_y2, int end_x, int end_y, int gap) {

  for(int i=300; i<=400; i=i+5) {
    bezier(start_x, start_y, i+gap, control_y1, i+gap, control_y2, end_x, end_y);
  }
}