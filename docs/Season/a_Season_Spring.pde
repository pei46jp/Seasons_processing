//晴れ
void drawSpring_Sun() {
  Sp_Ground(#5050ff); //この色は空の色
  drawFlower();
  drawSakura();
  
  resetMatrix();
  
  for (int i = 0; i < C; i++) {
    Cf[i].Cdrop();
  }
  
  drawSolar();
}

//雨
void drawSpring_Rain() {
  Sp_Ground(#cccccc); //この色は空の色
  drawFlower();
  drawSakura();
  
  resetMatrix();

  for (int i = 0; i < R1; i++) {
    Rf1[i].Rdrop1();
  }
}
  

//------------------------------------------------------------------------------------------
void Sp_Ground(color Sp_c) {
  
  background(Sp_c); //空の色
  
  float upper = -150;  
  
  //山(右)
  fill(#228b22);
  noStroke();
  beginShape();
  curveVertex(width*2.3/10,height*9.5/15 + upper);
  curveVertex(width*2.3/10,height*9.5/15 + upper);
  curveVertex(width*3.6/10,height*8.7/15 + upper);
  curveVertex(width*5.5/10,height);
  curveVertex(width*2.3/10,height);
  curveVertex(width*2.3/10,height*9.5/15 + upper);
  endShape(CLOSE);
  
  //山(左)
  fill(#6b8e23);
  noStroke();
  beginShape();
  curveVertex(0,height*9/15 + upper);
  curveVertex(0,height*9/15 + upper);
  curveVertex(width*1.8/10,height*7/15 + upper);
  curveVertex(width*4/10,height);
  curveVertex(0,height + upper);
  curveVertex(0,height*9/15 + upper);
  endShape(CLOSE);
  
  //地面
  noStroke();
  fill(#1fe000);
  beginShape();
  curveVertex(0,height*11/15 + upper);
  curveVertex(0,height*11/15 + upper);
  curveVertex(width/10,height*11/15 + upper);
  curveVertex(width*2/10,height*10.9/15 + upper);
  curveVertex(width*3/10,height*11/15 + upper);
  curveVertex(width*4/10,height*11/15 + upper);
  curveVertex(width*5/10,height*11/15 + upper);
  curveVertex(width*6/10,height*11/15 + upper);
  curveVertex(width*7/10,height*11/15 + upper);
  curveVertex(width,height*10.5/15 + upper);
  curveVertex(width,height);
  curveVertex(0,height); 
  curveVertex(0,height*11/15 + upper);
  endShape(CLOSE);

}



//地面の花-------------------------------------------------------------

//地面の花用座標
float flower_x[] = {1, 2, 2.5, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 17, 18, 18, 19, 19.5, 20, 22};
float flower_y[] = {11, 12, 15, 12, 10, 14, 13, 11, 15, 12.5, 10, 12, 10, 14, 11, 14, 10, 12, 10, 12, 14.5, 15};
float f_scale[] = {0.4, 0.6, 0.7, 0.6, 0.4, 0.8, 0.6, 0.4, 1, 0.5, 0.3, 0.6, 0.3, 0.9, 0.5, 0.8, 0.5, 0.3, 0.3, 0.5, 1, 1};



//花を描画する
void drawFlower() {
  //リスケール後の格納
  float flower_X[] = new float[flower_x.length];
  float flower_Y[] = new float[flower_y.length];
  
  for (int i = 0; i < flower_X.length; i++) {
    //リスケール
    flower_X[i] = (width * flower_x[i] / 24) - 100 * f_scale[i];
    flower_Y[i] = (height * flower_y[i] / 16) - 200 * f_scale[i];
    Flower(flower_X[i],flower_Y[i],f_scale[i]);
  }
}
//花そのもの
void Flower(float x, float y, float scale) {
  
  translate(x,y);
  
  noStroke();
  //花びら
  fill(#EDFF03);
  beginShape();
  curveVertex(114*scale, 114*scale);  
  curveVertex(106*scale, 83*scale);  
  curveVertex(113*scale, 75*scale);  
  curveVertex(124*scale, 75*scale);  
  curveVertex(132*scale, 72*scale);
  curveVertex(142*scale, 97*scale);  
  curveVertex(138*scale, 120*scale); 
  curveVertex(165*scale, 96*scale);  
  curveVertex(184*scale, 105*scale);  
  curveVertex(180*scale, 128*scale);
  curveVertex(146*scale, 136*scale);  
  curveVertex(163*scale, 151*scale);  
  curveVertex(165*scale, 168*scale);  
  curveVertex(154*scale, 180*scale);
  curveVertex(135*scale, 170*scale);  
  curveVertex(126*scale, 150*scale); 
  curveVertex(127*scale, 150*scale);  
  curveVertex(110*scale, 187*scale);
  curveVertex(84*scale, 168*scale);  
  curveVertex(96*scale, 150*scale);  
  curveVertex(110*scale, 139*scale);  
  curveVertex(72*scale, 134*scale); 
  curveVertex(67*scale, 124*scale);
  curveVertex(75*scale, 116*scale);  
  curveVertex(82*scale, 106*scale);  
  curveVertex(114*scale, 114*scale);  
  curveVertex(125*scale, 130*scale);  
  endShape(CLOSE);
  
  //茎から下
  beginShape();
  fill(#0AFA40);
  curveVertex(126*scale, 150*scale); 
  curveVertex(126*scale, 220*scale);  
  curveVertex(165*scale, 190*scale);  
  curveVertex(188*scale, 183*scale);
  curveVertex(200*scale, 188*scale);  
  curveVertex(182*scale, 210*scale);  
  curveVertex(126*scale, 220*scale);  
  curveVertex(69*scale, 210*scale);
  curveVertex(55*scale, 188*scale);  
  curveVertex(66*scale, 183*scale);  
  curveVertex(86*scale, 190*scale);  
  curveVertex(127*scale, 220*scale);  
  curveVertex(127*scale, 150*scale);
  curveVertex(126*scale, 150*scale);
  endShape(CLOSE);

  fill(#FFC905);
  ellipse(126*scale, 132*scale, 33*scale, 33*scale);
  
  resetMatrix();
}


//桜の描画---------------------------------------------------------------------
void drawSakura() {
  translate(width-400,height/5);
  
  //花の塊
  fill(#ffc0cb);
  noStroke();
  ellipse(240, 150, 285, 285);
  
  //幹
  fill(#8b4513);
  noStroke();
  beginShape();
  curveVertex(290,450);
  curveVertex(290,450); 
  curveVertex(250,210);
  curveVertex(210,450);
  curveVertex(290,450);
  endShape(CLOSE);
  stroke(#8b4513);
  strokeWeight(10);
  line(250,280,210,250); 
  line(250,250,280,225);
  //line(250,160,180,90);
  
  

  
  //桜の花びらの配列
  int Sx[] = {300,200,150,280};
  int Sy[] = {100,125,200,190};
  for(int i = 0; i < Sx.length; i++) {
  Hanabira(Sx[i],Sy[i],20); //横の位置、縦の位置、大きさ調整用変数
  }
}

void Hanabira(int Sx, int Sy, float Sr) {
  fill(#ffd7cb);
  strokeWeight(0.5);
  stroke(#ff94cb);
  pushMatrix();
  translate(Sx, Sy);
  beginShape();
  for (int theta = 0; theta < 360; theta++) {
    float A = (sin(radians(theta * 5)) + cos(radians(theta * 10))) / 2.0;
    float B = A * 0.5 + 1.0;
    float R = Sr * B;
    float x = R * sin(radians(theta + 90));
    float y = R * cos(radians(theta + 90));
    vertex(x, y);
  }
  endShape(CLOSE);
  popMatrix();
}
