int w = 500;
int h = 500;
int t = 20;
//player
int psize=t;
float px=w/2;
float py=h/2;
float pxv=0;
float pyv=0;
float pspeed=5;
float gravity=0;

int[][] blocos = {
  //bordas
  {0,0,w,t,1},
  {0,h-t,w,t,1},
  {0,0,t,h,1},
  {w-t,0,t,h,1},
  
  //plataformas
  {100,100,20,20,0}
};

void setup() {
 size(500,500); 
 noStroke();
 frameRate(30);
}
void draw() {
  background(255);
desenhaBlocos();
desenhaPlayer();
acaoPlayer();
text(frameRate,20,20);
}

void desenhaBlocos() {
  for(int i = 0; i<blocos.length; i++) {
    fill(100);
    if(blocos[i][4]==0){
      fill(0,255,0); }
    rect(blocos[i][0],blocos[i][1],blocos[i][2],blocos[i][3]);
  }
}
void desenhaPlayer() {
 px+=pxv;
 py+=pyv;
 
 fill(255,0,0);
 rect(px,py,psize,psize);
}
void acaoPlayer() {
  if (keyPressed) {
   if(keyCode==LEFT){
    pxv=-pspeed;
   }
   if(keyCode==RIGHT){
     pxv=pspeed;
   }
  }else {
    pxv=0;
    pyv=0;
}
}