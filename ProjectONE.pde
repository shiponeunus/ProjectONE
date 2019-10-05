
float a, b, c, d, e;
void setup() {
  size( 800, 800);
}
void draw() {
  background(#1C0BFF);
  beginning(400, 400);
   if (keyPressed) {
     if ( key == 'a') {
  next();

     }
   }
  /*if mousePressed(){
  next();
  } */
}


void beginning(int x, int y) {
  strokeWeight(4);
  frameRate(15);
  fill(255, 0, 0);
  triangle( 400, 400, 30, 780, 770, 780);
  for ( int i=0; i<100; i++) {
    a = random(80, 750);
    b = random(50, 680);
    c = random(20, 100);
    d = random(50, 110);
    stroke(#FFCF05);
    line(400, 400, a, b); 
    stroke(#AFFFAF);
    line( 400, 390, a +30, b/2);
    fill(#041170); 
    ellipse( 400, 400, c, d );
  }
  stroke(#6384EB);
  fill(#3EFF05);
  quad( 380, 385, 420, 385, 380, 415, 420, 415);
  stroke(#FFCF05);
}

void next() { 
  background(0);
  frameRate(22);
  
  for ( int i= 0; i < 100; i++) {
    stroke(#CF3046);
    fill(0);
    e = random(20, 950);
    circle( 400, 400, e);
    circle( 400, 400, e+100);
  }
  stroke(#91E6FF);
  fill(#8C31FF);
  quad( 380, 385, 420, 385, 380, 415, 420, 415);
}

 