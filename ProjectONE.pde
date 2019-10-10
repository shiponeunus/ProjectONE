float a, b, c, d, e, f, v, k, l;
int h= 0;
float r= random(100, 255);
float g= random(100, 255);
float n= random(100, 255);

Object o = new Object( 20, 28);
Object p = new Object( 200, 23);
Object u = new Object( 100, 20 );

Lines hor = new Lines();
Lines vert = new Lines(); 

void setup() {
  size( 800, 800);
}

void draw() {
  background(#1C0BFF);
  beginning(400, 400);
  if (keyPressed) {
    if ( key == 's') {
      next();
    } else if ( key == 'a') {
      following(mouseX, mouseY);
    } else if ( key == 'd') {
      after();
    } else if ( key == 'f') {
      background(0);
      o.then();
      p.then();
      u.then();
    } else if ( key == 'g') {
      background(255);
      stroke(#E84E64);
      fill(#FFA550);

      pushMatrix();
      rotate(19);
      rect(pmouseX, pmouseY, 30, 30);
      rect(pmouseX-20, pmouseY-20, 20, 20);
      rect(mouseX-20, mouseY-30, 40, 40);
      popMatrix();
      int i=0;
      while ( i<=300) {
        rect(pmouseX- i, pmouseY-i, 30, 30);
        rect(pmouseX+ i, pmouseY-i, 30, 30);
        i+=20;
      }
      rect(mouseX, mouseY, 50, 50);
      vert.subsequently();
      hor.succeeding();
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
    v= random(30, 80);
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

  if ( mouseY+50 <= 800 && mouseY-80 >= 500) {
    int x=0; 
    int y= 0;
    for ( int i=0; i<100; i++) {

      strokeWeight(3);
      stroke(#23FFEB); 
      line( x, 500, 350+x, 800); //vertical line
      line(300-x, 550+y, 400+x, 550); // horizontal line
      x += 20;
      y+= 20;
      k= random(-50, 100);
      l = random( 25, 60);
      fill(#EB213E);
      circle( 400 + k, 600+k, l);

      strokeWeight(3);
      stroke(#3E2DED);
      fill(#A1D1C8);
      quad(450, 500, 450, 250, 800, 0, 800, 800);
      quad(350, 500, 0, 800, 0, 0, 350, 250);
      quad( 0, 0, 800, 0, 500, 275, 300, 250);
    }
  } 
  if (mouseX -50 >=0 && mouseX<= 300 ) {
    fill(#A1D16D);
    quad(350, 500, 0, 800, 0, 0, 350, 250);
    quad(450, 500, 450, 250, 800, 0, 800, 800);
    stroke(#FFE100);
    fill(0);
    ellipse(mouseX+10, mouseY-30, 50, 100);
    ellipse( mouseX+10, mouseY- 30, 45, 90);
    ellipse(mouseX+ 500, mouseY-30, 50, 100);
    ellipse(mouseX+500, mouseY-30, 45, 90);
  } 
  if ( mouseX-50 >= 400 && mouseX <=800) {
    fill(#FFB366);
    quad(350, 500, 0, 800, 0, 0, 350, 250);
    quad(450, 500, 450, 250, 800, 0, 800, 800);
    stroke(#FFE100);
    fill(0);
    ellipse(mouseX+60, mouseY-30, 50, 100);
    ellipse( mouseX+60, mouseY- 30, 45, 90);
    ellipse(mouseX- 500, mouseY-30, 50, 100);
    ellipse(mouseX-500, mouseY-30, 45, 90);
  }
  if ( mouseY-30 <=250 && mouseY-30 >= 0) {
    strokeWeight(3);
    stroke(#3422EB);
    fill(#66FF7D);
    quad( 380, 385, 420, 385, 380, 415, 420, 415);
    strokeWeight(2);
    stroke(0);
    fill(#FFF4AE);
    circle( mouseX+50, mouseY-30, 15);
    stroke(#E52BFF);
    fill(#00EEFF);
    quad( 0, 0, 800, 0, 450, 250, 350, 250);
    for (int i = 0; i < 100; i++) {

      stroke(0, g, n);
      rotate(0.1);
      scale(1.01);
      line(200, -150, 50, 150);
      stroke(#CA59FF);
      float b = random(20); 
      rotate(PI/b);
      scale(1.05);
      line(150, 150, 90, 250);
      stroke(#3DFF00);
      float a = random(30); 
      rotate(PI/a);
      scale(1.01);
      line(150, 150, 90, 150);
    }
  }
  strokeWeight(3);
  stroke(#3422EB);
  fill(#FF47AF);
  quad( 380, 385, 420, 385, 380, 415, 420, 415);

  strokeWeight(2);
  stroke(0);
  fill(#FFF4AE);
  circle(pmouseX+50, pmouseY-30, 14);
  circle( mouseX+50, mouseY-30, 15);
}
// creates line, triangle , circle , rectangle that moves with time
class Object {
  float ypos, speed; 

  Object ( float y, float s) {

    ypos = y;
    speed = s;
  }

  void then() {
    fill( #E52B79);
    ypos += speed; 
    if ( mouseX  <=750) {
      quad(mouseX-25, mouseY-25, mouseX+25, mouseY-25, mouseX-25, mouseY+25, mouseX+25, mouseY+25);
    }
    circle( 100, ypos -20, 25);
    triangle(200, ypos, 350, ypos, 275, ypos/2);
    rect( 600, ypos, width/4, ypos/3);
    line(0, ypos, width, ypos);
    if (ypos > height) { 
      ypos = 0;
    }
  }
}

//creates horizontal and vertical lines based on values from arrays
class Lines {
  int xpos, ypos; 
  int[] numbers = { 100, 50, 150, 40, 700};
  int[] integers = {580, 750, 135, 375, 80};
  Lines( ) {

    for (int i=0; i<5; i++) {
      xpos = numbers[i];
      ypos = integers[i];

      i++;
    }
  }
  void subsequently() {
    //square(mouseX, mouseY, 15);
    for (int i=0; i<5; i++) {
      xpos = numbers[i];
      stroke(#4166FF);
      strokeWeight(2);
      line( xpos, 0, xpos, height);
      strokeWeight(3);
      line( xpos+4, 0, xpos+4, height);
      strokeWeight(5);
      line(xpos+10, 0, xpos+10, height);
    }
  }
  void succeeding() {
    for (int i=0; i<5; i++) {
      ypos = integers[i];
      strokeWeight(2);
      line( 0, ypos, width, xpos);
      strokeWeight(1);
      line( 0, ypos+5, width, ypos+ 5);
      strokeWeight(3);
      line( 0, ypos+8, width, ypos+8);
    }
  }
}
