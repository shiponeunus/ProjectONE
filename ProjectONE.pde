int j; 
float a, b,c, d;
void setup() {
  size( 800, 800);
/*
int[] numbers = new float[20];
for(int i= 0; i <= 20; i ++){
  w = int(random(80,500);)
  numbers[i]= w; 
  
} */
}

void draw() {
  background(#1C0BFF);
  beginning(400,400);
  
}
/*void mousePressed(){
  beginning(400,400);
  
} */

void beginning(int x, int y){
 strokeWeight(4);
  frameRate(10);
  
  /* im trying to make the width and height of ellipse go through an 
  array list of values that are determined randomly in setup
  for( int i=0; i<=20; i++){
  fill(#EBBDFF); 
  ellipse( 380.0, 400.0, numbers[i], numbers[i]); 
  } */ 
 
  //fill(#D1C9FF);

  fill(255,0,0);
  triangle( 400, 400, 30, 780, 770, 780);
  for( int i=0; i<100; i++){
a = random(80, 750);
b = random(50,680);
  c = random(20, 100);
  d = random(50, 110);
  
  stroke(#FFCF05);
  line(400, 400, a, b); 
  
  stroke(#AFFFAF);
  line( 400, 390, a +30, b/2);
  /*stroke(#51FF05);
  line( 380, 400, a +50, b+ 80);
    stroke(#05FFF9);
  line( 420, 400, a +80, b+ 100); */
  fill(#041170); 
  ellipse( 400, 400, c,d ); 
  }
   stroke(#6384EB);
   fill(#3EFF05);
  quad( 380, 385, 420, 385, 380, 415, 420, 415);
  stroke(#FFCF05); 
}

 void mousePressed(){ 
   background(0);
   stroke(#91E6FF);
   fill(#A0FF92);
   quad( 380, 385, 420, 385, 380, 415, 420, 415);
   for ( int i= 50; i < 700; i+=50){
     circle( 380, 385, i);
   }
 }
