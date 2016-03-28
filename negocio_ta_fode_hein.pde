int w = 1000;
int h = 500;
int t = 20;
//player
int psize=t;
int pxi=50;
int pyi=450;
float px=50;
float py=450;
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
 
  {100,430,100,20,0},
  {220,400,150,20,0},
  {220,450,w-250,30,2},
  {500,400,150,20,0},
  {800,400,150,20,0}
};

void setup() {
 size(1000,500); 
 noStroke();
 frameRate(30);
}
void draw() {
  background(255);
acaoPlayer();
toqueNoBloco();
desenhaBlocos();
desenhaPlayer();

}
void toqueNoBloco(){
  for(int i = 0; i<blocos.length; i++) {
  if( px+pxv+psize > blocos[i][0] && px+pxv < blocos[i][0]+blocos[i][2] && py+psize > blocos[i][1] && py < blocos[i][1]+blocos[i][3] ){
     pxv = 0;
     if ( blocos[i][4]==2){
       px = pxi;
       py = pyi;
 }
 }
  if( px+psize > blocos[i][0] && px < blocos[i][0]+blocos[i][2] && py+pyv+psize > blocos[i][1] && py+pyv < blocos[i][1]+blocos[i][3] ){
     pyv = 0;
     if ( blocos[i][4]==2){
       px = pxi;
       py = pyi;
 }
}
  }
}
void desenhaBlocos() {
 for(int i = 0; i<blocos.length; i++) {
    fill(100);
 
    if(blocos[i][4]==0){
      fill(0,255,0); }
    rect(blocos[i][0],blocos[i][1],blocos[i][2],blocos[i][3]);
     if(blocos[i][4]==2){
      fill(255,0,10); }
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
   if(keyCode==DOWN){
     pyv=pspeed;
   }
   if(keyCode==UP){
     pyv=-pspeed;
   }
  }else {
    pxv=0;
    pyv=0;
    for(int i = 0; i<blocos.length; i++) {
   if(px+pxv+psize > blocos[i][0] && px+pxv < blocos[i][0]+blocos[i][2] && py+psize > blocos[i][1] && py < blocos[i][1]+blocos[i][3]){
}else{
py = py+1;  
}
  }
}
}