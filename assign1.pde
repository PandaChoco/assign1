
int i=0,j=0,a=0,x=0,y=0,h=0;
PImage bg1,bg2,enemy,fighter,hp,treasure;

void setup () {
  size(640,480) ;
  
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  a=floor(random(195));
  x=floor(random(600));
  y=floor(random(440));
  h=floor(random(420));
}

void draw() {
  
  image(bg1,i,0);
  image(bg2,i-640,0);
  image(bg1,i-1280,0);
  i++;
  i%=1280;
  
  fill(255,0,0);
  rect(10,0,a,20);
  image(hp,0,0);
  
  image(fighter,580,230);
  
  image(treasure,x,y);
  
  image(enemy,j,h);
  j+=5;
  j%=640;
}
