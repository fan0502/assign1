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
float bg1_x;
float bg1_y;
float bg2_x;
float bg2_y;
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
   bg1_x=0;
   bg1_y=0;
   bg2_x=640;
   bg2_y=0;
  }
void draw() {
  background(255);
  if(bg1_x>-640){
                 image(bg2,bg1_x-640,bg2_y);
                 image(bg1,bg1_x--,bg1_y);
  }else{
                 bg1_x=640;
                 image(bg1,bg1_x--,bg1_y);
  }
  image(bg2,bg1_x+640,bg2_y);
  image(enemy,enemy_x++,enemy_y);
  image(fighter,590,25);
  fill(255,0,0);
  rect( 5,0,blood_x,25);
  image(hp,0,0);
  image(treasure,treasure_x,treasure_y);
  enemy_x%=width;
  }
