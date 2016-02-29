int raquete1y = 100;
int raquetey = 100;
int raquete1x = 300;
int raquetex = 300;
int veloR = 10;
int bolax = 400;
int bolay = 250;
int velox = 5;
int veloy = 5;
int pont = 0;
int pont1 = 0;

void setup() {
  size (800,500);
  rectMode(CENTER);
}
void draw() {
  background(0);
  bola();
  raquete();
  raquete1();
  placar();
}

void bola() {
  ellipse(bolax,bolay,20,20);
  bolax=bolax + velox;
  bolay=bolay + veloy;
  if (bolay <= 0 ||bolay >= height){
    veloy =veloy * -1;
  }
 
   if (bolax <= 0 ){
    bolax = width/2;
    bolay = height/2;
    veloy =veloy * -1;
    velox =velox * -1;
    pont = pont + 1;
  }
  if (bolax >= width){
    bolax = width/2;
    bolay = height/2;
    veloy =veloy * -1;
    velox =velox * -1;
    pont1 = pont1 + 1;
  }
  if (bolax = raquete){
    
  }
  if (bolay > raquete1y){
  }
}

void raquete() {
  rect(width-70,mouseY,20,100);
  
}

void raquete1() {
  if (keyPressed){
   if (keyCode==UP){
     raquete1y = raquete1y - veloR;
   } if (keyCode==DOWN){
     raquete1y = raquete1y + veloR;
   } 
  }
  rect(70,raquete1y,20,100); 
  
}
void placar() {
 textSize(36);
 text(pont,width-50,30);
 text(pont1,50,30);
}