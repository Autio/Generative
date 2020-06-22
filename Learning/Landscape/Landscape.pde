

void draw() {
  repeat(100, 500, 10, 100, 500, 10, landscape);
  
}

void landscape(int x, int y){

  int x2 = x + (y/2);
  int y2 = y + 100*int(noise(x/200, y/200));
  
  circle(x2, y2, 1);

  
}
