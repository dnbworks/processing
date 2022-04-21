color BackgroundColor = color(240, 230, 190);
color BallColor = color(165, 90, 85);
color WallColor = color(120, 150, 165);

float BallStartingY = 100;
float BallX = 100;
float BallY = BallStartingY;
float BallRadius = 30;
float BallSpeed = 5;

float WallHeight = 100;
float GapLeft = 300;
float GapWidth = 150;
float GapRight = GapLeft+GapWidth;

float  Score = 0;
float GoalPoints = 10;
float MissPoints = -5;

boolean BallIsDropping = false;

void setup() {
 size(800, 600);
 smooth();
 noStroke();
}

void draw() {
  moveBall();
  testBall();
  drawEverything();
}

void moveBall() {
  if(BallIsDropping){
    BallY += BallSpeed;
  } else {
    BallX += BallSpeed;
  }
}

void testBall() {
  if(BallIsDropping){
    if(BallY-BallRadius >  height){
      if(BallX-BallRadius > GapLeft && BallX+BallRadius < GapRight){
        Score += GoalPoints;
      } else {
        Score += MissPoints;
      }
      BallX = 0;
      BallIsDropping = false;
      BallY = BallStartingY;
    }
  } else {
    if(BallX-BallRadius >  width){
      BallX = 0;
    }
  }
}

void drawEverything() {
 background(BackgroundColor);
 
 fill(WallColor);
 rect(0, height-WallHeight, GapLeft, WallHeight);
 rect(GapRight, height-WallHeight, width-GapRight, WallHeight);
 
 fill(BallColor);
 ellipse(BallX, BallY, BallRadius*2, BallRadius*2);
}

void keyTyped() {
  if(key == ' '){
    BallIsDropping = true;
  }
}
