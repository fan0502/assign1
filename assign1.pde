PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
float blood_x;
float treasure_x;
float treasure_y;
float enemy_x;
float enemy_y;
int time;
void setup() {
   size(640,480) ;
   bg1=loadImage("img/bg1.png");
   bg2=loadImage("img/bg2.png");
   enemy=loadImage("img/enemy.png");
   fighter=loadImage("img/fighter.png");
   hp=loadImage("img/hp.png");
   treasure=loadImage("img/treasure.png");
   blood_x=random(200);
   treasure_x=random(600);
   treasure_y=random(25,440);
   enemy_y=random(420);
   enemy_x=0;
   time=2;
  }

void draw() {
   background(255);
   if(time%2.0==1){
   image(bg2,0,0);
   } 
   if(time%2.0==0){ 
   image(bg1,0,0);
   } 
  image(enemy,enemy_x++,enemy_y);
  image(fighter,590,25);
  fill(255,0,0);
  rect( 5,0,blood_x,25);
  image(hp,0,0);
  image(treasure,treasure_x,treasure_y);
  enemy_x%=width;
  if(enemy_x==639){
  time++;
  }
}
