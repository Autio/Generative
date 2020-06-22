// variables
int diam = 8;    
float centX1, centY1, centX2, centY2, centX3, centY3;

// init
void setup() {  
  size(800, 800);
  frameRate(24);  
  smooth();
  background(180);
  centX1 = width/2 - 120;
  centY1 = height/2;
  centX2 = width/2 + 120;
  centY2 = height/2;
  centX3 = width/2 ;
  centY3 = height/2 + 120;
  
  
  stroke(0);
  strokeWeight(5); 
  fill(255, 50);     
}

// frame loop
void draw() {
  if (diam <= 400) {
    background(180); 
     
    strokeWeight(5);   // draw the circle
    fill(255, 50);   
    ellipse(centX1, centY1, diam, diam);
    ellipse(centX2, centY2, diam, diam);
    ellipse(centX3, centY3, diam, diam);

    
    strokeWeight(0);   
    noFill();
    
    // int increment = 12;
    int increment = 15 + int(random(10));
    
    int tempdiam = diam;
    while (tempdiam > increment) {  // loop within a loop
    
       fill(diam / 2, 50); // background colour weirdness   

       ellipse(centX1, centY1, tempdiam, tempdiam);
       ellipse(centX2, centY2, tempdiam, tempdiam);
       ellipse(centX3, centY3, tempdiam, tempdiam);

       tempdiam -= increment; 
    }
    
    diam += increment; 
  }
}
