
//季節変化用num
PFont font;
static final int SPRING = 1;
static final int SUMMER = 2;
static final int AUTUMN = 3;
static final int WINTER = 4;
int SeasonNum = 0;

//falling
int S = 3500;
int R1 = 600;
int R2 = 1200;
int C = 800;
Snowfall[] Sf = new Snowfall[S];
Rainfall[] Rf1 = new Rainfall[R1];
Rainfall[] Rf2 = new Rainfall[R2];
C_B_fall[] Cf = new C_B_fall[C];



void setup() {
  fullScreen();
  //size(1400,800);
  noCursor();
  
  
  font = createFont("Ms-Mincho",48,true);
  
  for (int i = 0; i < C; i++) {
    Cf[i] = new C_B_fall();
  }
  
  for (int i = 0; i < R1; i++) {
    Rf1[i] = new Rainfall();
  }
  
  for (int i = 0; i < R2; i++) {
    Rf2[i] = new Rainfall();
  }
  
  for (int i = 0; i < S; i++) {
    Sf[i] = new Snowfall();
  }

}

void draw() {
  drawSeasonMaster();
}

void keyTyped() {
  if (key == ENTER) {
    if (SeasonNum == 4) {
      SeasonNum = 0;
    }
    
    SeasonNum++;
  }
}

void drawSeasonMaster() {
  switch(SeasonNum) {
  //春
    case SPRING:
      drawSpring_Sun();
      if (keyPressed) {
        if (key == 'r') {
          drawSpring_Rain();
        }
      }
    break;
    
  //夏
    case SUMMER:
      drawSummer_Sun();
      if (keyPressed) {
        if (key == 'r') {
          drawSummer_Rain();
        }
        if (key == 't') {
          drawSummer_Thunder();
        }
      }
    break;
    
  //秋
    case AUTUMN:
      drawAutumn_Sun();
      if (keyPressed) {
        if (key == 'r') {
          drawAutumn_Rain();
        }
      }
    break;
    
  //冬
    case WINTER:
      drawWinter_Snow();
      if (keyPressed) {
        if (key == 's') {
          drawWinter_Sun();
        }
      }
    break;
  }
}
