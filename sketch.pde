int xStart;
int yStart;
int xEnd;
int yEnd;
int xChange;
int yChange;
int yRange;
int xMax;
int xMin;
float strokeVar;
double run;
int rate1;
int rate2;
int change;

void setup() {
  size(400,600);
  background(150, 170, 205);
  xStart = 200;
  yStart = 0;
  strokeVar = 10.0;
  xMax = 400;
  xMin = 0;
  frameRate(10);
  stroke(251, 255, 117);
  rate1 = 200;
  rate2 = 200;
  change = 1;
} 

void draw() {
  background(150, 170, 205);
  stroke(102, 122, 165, 230);
  fill(102, 122, 165, 230);
  ellipse((rate1+125),50,250,150);
  ellipse((rate1-150),50,250,150);
  ellipse((rate1-25),50,250,150);  

  if (rate1 > 210)
    change = -2;
  if (rate1 < 190)
    change = 2;
  rate1 += change;
  rate2 -= change;
 
  stroke(112, 132, 175, 200);
  fill(112, 132, 175, 200);  
  ellipse((rate2-150),20,200,150);
  ellipse((rate2),20,200,150);
  ellipse((rate2+150),20,200,150);
  
  fill(60, 80, 125);
  stroke(60, 80, 125);
  triangle(-50, 600, 50, 400, 200, 600);
  
  fill(70, 90, 135);
  stroke(70, 90, 135);
  triangle(200, 600, 300, 450, 450, 600);
  
  run = Math.random();
  if (run < 0.05) 
    strike();
    
  fill(80, 100, 145);
  stroke(80, 100, 145);
  triangle(75, 600, 175, 300, 325, 600);  
  
  fill(80, 100, 145);
  stroke(80, 100, 145);
  triangle(350, 600, 390, 375, 475, 600);
 
}

void strike() {
    stroke(251, 255, 117);
    yRange = (int)(Math.random()*400) + 400;
    xStart = (int)(Math.random()*400);
    while (yEnd < yRange) {
      strokeVar = strokeVar * 0.97;
      if (strokeVar > 0){ 
        strokeWeight(strokeVar); }
      xChange = (int)(Math.random()*20 - 10);
      yChange = (int)(Math.random()*7 + 3);
      xEnd = xStart + xChange;
      yEnd = yStart + yChange;
      line(xStart, yStart, xEnd, yEnd);
      xStart = xEnd;
      yStart = yEnd;
    }
    yStart = 0;
    yEnd = 2;
    strokeVar = 10; 
  }
