int startX = (int)(Math.random()*801);
int startY = 0;
int endX = startX + -5 + (int)(Math.random()*11);
int endY = startY + (int)(Math.random()*11);
int o = 0;

void setup(){
  size(800,800);
  background(10,26,46);
}

void mousePressed(){
  stroke(255,255,255);
  startX = (int)(Math.random()*801);
  startY = 0;
  endX = startX + -5 + (int)(Math.random()*21);
  endY = startY + (int)(Math.random()*21);
  lightning(8);
  o = 0;
}

void branch(int startX, int startY, int endX, int endY, float t){
  int x = 0;
  int y = 5;
  int bend = (int)(Math.random()*2);
  int up = (int)(Math.random()*2);
  while(t>0.05){
    strokeWeight(t*2);
    stroke(150,200,255,75);
    line(startX,startY,endX,endY);
    strokeWeight(t*3);
    stroke(150,200,255,25);
    line(startX,startY,endX,endY);
    stroke(235,235,255,255);
    strokeWeight(t);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    endX += (int)(Math.random()*x);
    endY += (int)(Math.random()*y);
    y += -10 + (int)(Math.random()*24);
      
    if (bend == 0)
      x += -3 + (int)(Math.random()*10);
    else
      x += 3 - (int)(Math.random()*10);
      
    t -= 0.2;
    if (Math.random() < 0.05)
      branch(startX, startY, endX, endY,t-(float)(Math.random()));
  }
}

void lightning(float t){
  while(endY < 830){
    strokeWeight(t*2);
    stroke(150,200,255,75);
    line(startX,startY,endX,endY);
    strokeWeight(t*3);
    stroke(150,200,255,25);
    line(startX,startY,endX,endY);
    stroke(255,255,255,255);
    strokeWeight(t);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    endX += -20 + (int)(Math.random()*41);
    endY += -2 + (int)(Math.random()*31);
    t -= 0.075;
    if (Math.random() < t/60)
      branch(startX, startY, endX, endY,(t)/1.5);
  }
}

void draw(){
  fill(10,26,46,o);
  rect(-50,-50,900,900);
  o += 1;
}







