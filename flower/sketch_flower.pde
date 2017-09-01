size(600, 800);
background(255);

noFill();

// Calyxes(꽃받침)
for(int x=300; x<=400; x=x+5) {
  stroke(0, 255, 0, 20);
  strokeWeight(3);
  bezier(250, 370, x, 210, x, 350, 450, 350);
}

for(int x=300; x<=400; x=x+5) {
  stroke(0, 255, 150, 20);
  strokeWeight(3);
  bezier(350, 370, x-50, 215, x-50, 350, 150, 350);
}


// Stem(줄기)
for(int x=300; x<=330; x=x+1) {
  stroke(0, 500-x, 150, 20);
  strokeWeight(3);
  bezier(300, 300, x*1.2, 350, x/1.6, 600, 280, 750);
}


// Rose (장미꽃)
for(int x=200; x<=400; x=x+5) {
  stroke(255, 0, 0, 20);
  strokeWeight(3);
  bezier(300, 100, x, 0, x, 300, 300, 300);
}

for(int x=200; x<=400; x=x+5) {
  stroke(255, 0, 0, 20);
  strokeWeight(3);
  bezier(150, 100, x*1.5, 170, x/1.9, 300, 300, 300);
}

for(int x=200; x<=400; x=x+5) {
  stroke(255, 0, 100, 20);
  strokeWeight(3);
  bezier(180, 170, x*1.5, 0, x/1.9, 300, 300, 300);
}

for(int x=200; x<=400; x=x+5) {
  stroke(255, 0, 100, 20);
  strokeWeight(3);
  bezier(200, 70, x*1.1, 170, x/1.2, 300, 300, 300);
}

for(int x=200; x<=400; x=x+5) {
  stroke(255, 0, 100, 20);
  strokeWeight(3);
  bezier(430, 80, x/1.4, 170, x*1.2, 300, 300, 300);
}

for(int x=200; x<=400; x=x+5) {
  stroke(255, 0, 0, 20);
  strokeWeight(3);
  bezier(420, 160, x/1.2, 0, x*1.1, 300, 300, 300);
}

for(int x=200; x<=400; x=x+5) {
  stroke(255, 0, 0, 20);
  strokeWeight(3);
  bezier(360, 60, x, 170, x, 300, 300, 300);
}

// Save *.PNG file
saveFrame("PFlower.png");