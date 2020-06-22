function setup() {
  simple();
  
}

// Make the first step smaller to turn the dots into lines
function draw() {
  repeat(325, 647, 12, 100, 447, 1, landscapeOther);

  repeat(10, 647, 1, 100, 800, 12, landscape);

}

function landscape(x, y){

  var x2 = x + (y/2);
  var y2 = y + 161*noise(x/100, y/200);
  print("x2");
  print(x2);
  print("y2");
  print(y2);  
  circle(x2, y2, 1);
  

  if(y <= 124)
  {

   stroke(255,215,0); 
  } 
  else if(y > 720 && y < 780)
  {
   stroke(155); 
  }
  else 
  {
    stroke(104, 12, 7);    
  }  
}
  



function landscapeOther(x, y){

  var x2 = x +  161*noise(x/200, y/100);
  var y2 = y + (x / 2);
  print("x2");
  print(x2);
  print("y2");
  print(y2);  
  circle(x2, y2, 1);
stroke(104, 12, 7);    
}

function simple() {
  // default canvas size
  createCanvas(1100,1000);


  // stop repeating draw()
  noLoop();

  // thicker default lines
  strokeWeight(1);

  // background so it is visible
  background('lightpink');

  // red fill
  fill('yellow');

  // angles counted in degrees, not radians
  angleMode(DEGREES);
}

p5.prototype.circle = function (x, y, diameter) {
  ellipse(x, y, diameter);
};

// repeat takes a function and repeats it a given number of times
// credit https://stackoverflow.com/questions/49041124/creating-a-custom-loop-for-children-to-use-eg-repeat5-code-to-be-executed
// updated to allow outer-inner loops
function repeat() {

  if (arguments.length == 2) {
    // repeat(n, fn)
    for (var i = 0; i < arguments[0]; i += 1) {
      // call supplied function
      arguments[1]();
    }

  }
  else if (arguments.length == 4) {

    // repeat(start, end, step, fn(i) )
    for (var i = arguments[0]; i <= arguments[1]; i += arguments[2]) {
      // call supplied function with loop counter
      arguments[3](i);
    }

  } else if (arguments.length == 7) {
    // loop within a loop, also known as a nested loop
    // repeat(outerloop_start, outerloop_end, outerloop_step, innerloop_start, innerloop_end, innerloop_step, fn(i,j) )

    // outer loop
    for (var i = arguments[0]; i <= arguments[1]; i += arguments[2]) {

      // inner loop
      for (var j = arguments[3]; j <= arguments[4]; j += arguments[5]) {
        // call supplied function with both loop counters
        arguments[6](i, j);
      }

    }

  }


}
