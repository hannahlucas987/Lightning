void setup(){
  size(300,300);
  strokeWeight(5);
  background(75, 75, 75);
  frameRate(100);
  int startX = 150;
  int startY = 0;
  int endX = 150;
  int endY = 0;
}

void cloud(int cloudX, int cloudY, int cloudSize){
  fill(190, 190, 190);
  noStroke();
  ellipse(cloudX, cloudY, cloudSize, cloudSize);
  ellipse(cloudX + 30, cloudY + 20, cloudSize, cloudSize);
  ellipse(cloudX - 30, cloudY + 20, cloudSize, cloudSize);
  ellipse(cloudX, cloudY + 25, cloudSize, cloudSize);
}

void draw(){
  int randomColor = (int)(Math.random()*50) + 200;
  stroke(randomColor + 5, randomColor, 0);
  
  endX = startX + (int)(Math.random()*19) - 9;
  endY = startY + (int)(Math.random()*10);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
   
  if (endY > 300){
    endY = 300;
  }
  cloud(150, 25, 60);
}

void mousePressed(){
  background(75, 75, 75);
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}
