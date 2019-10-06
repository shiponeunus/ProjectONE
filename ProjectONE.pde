float a, b, c, d, e, f, g;
int h= 0;
void setup() {
  size( 800, 800);
}
void draw() {
  background(#1C0BFF);
  beginning(400, 400);
  if (keyPressed) {
    if ( key == 'a') {
      next();
    } else if ( key == 's') {
      following(mouseX, mouseY);
    } else if ( key == 'd') {
      after();
    }
  }
}


void beginning(int x, int y) {
  strokeWeight(4);
  frameRate(15);
  fill(255, 0, 0);
  triangle( 400, 400, 30, 795, 770, 795);
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
  frameRate(15);

  for ( int i= 0; i < 100; i++) {
    stroke(#CF3046);
    fill(0);
    e = random(20, 950);
    f = random(30, 350);
    g= random(30, 80);
    circle( 400, 400, e);
    circle( 400, 400, e+100);
    stroke(#EB6916);

    circle( mouseX, mouseY, f);
    circle( mouseX +350, mouseY-350, f+40);
    circle(mouseX-350, mouseY-350, g);
  }

  stroke(#91E6FF);
  fill(#8C31FF);
  quad( 380, 385, 420, 385, 380, 415, 420, 415);
}

void following(int x, int y) {
  //for ( int i= 0; i < 100; i++) {}
  stroke(#D322EB);
  fill(#BFFCFF);
  triangle(x, y, x +50, y+100, 400, 400);
  quad(x- 150, y-50, x -150, y-150, 385, 395, 385, 405);
  quad( x+150, y+50, y+150, y+150, 395, 395, 395, 405);
  quad( x+450, y+350, y+450, y+350, 395, 395, 395, 405);
  quad( 400, 400, 400, 450, 800- x, y+300, 800- x, y);
  stroke(#30C6CF);
  fill(#E8EB87);
  quad( 380, 385, 420, 385, 380, 415, 420, 415);
}
void after() {
  background(0);
  stroke(#46D14A);
  line(350, 500, 350, 250);
  line(450, 500, 450, 250);
  line( 350, 500, 450, 500);
  
  line( 350, 250, 0, 0);
  line(450, 250, 800, 0);
  line( 350, 500, 0, 800);
  line(350, 250, 450, 250);
  line( 450, 500, 800, 800);


  strokeWeight(2);
  stroke(0);
  fill(#FFF4AE);
  circle( mouseX+50, mouseY-80, 15);
  /* want to make lines look like teradmill coming out from underneath above and sides
  while(h<500){
    strokeWeight(5);
    stroke(#7B39D1);
    line ( 380, 500, 350, 500+h);
    h+=20;
  } */ 
  strokeWeight(3);
  stroke(#30C6CF);
  fill(#C5FFCD);
  quad( 380, 385, 420, 385, 380, 415, 420, 415);

  
}
