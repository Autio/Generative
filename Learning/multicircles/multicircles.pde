int _num = 10;  

void setup() {
  size(800,600);
  background(255);
  smooth();
  strokeWeight(1);
  fill(150, 50);
  drawCircles();
}

void draw() {
  // do nothing
}

void mouseReleased() {
  drawCircles();    
}

void drawCircles() {
  for (int i=0; i<_num; i++) { 
    Circle thisCirc = new Circle();
    thisCirc.drawMe();  
  }
}


//======================================== Circle Object

class Circle {
  
  float x, y;     
  float radius; 
  color linecol, fillcol; 
  float alph; 
  
  Circle () {
    strokeWeight(5);
    x = random(width);
    y = random(height);
    fillcol = color(random(255), random(255), random(255));
    radius = random(120) + 10; 
    int radiusIncrement = random(3) + 2;
    for (int i = 0; i <= radius; i+= 7) {
        stroke(fillcol, 255-(255 * i/radius));
        ellipse(x, y, i, i);
    }
   // linecol = color(random(255), random(255), random(255));
   
   // alph = random(255);
  }
  
  void drawMe() {      
    noStroke(); 
    fill(fillcol, alph);
    ellipse(x, y, radius*2, radius*2);
    stroke(linecol, 150);
    noFill();
   // ellipse(x, y, 10, 10);
  }
}
