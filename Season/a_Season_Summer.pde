
//晴れ
void drawSummer_Sun() {
  Sm_Ground(#5050ff); //この色は空の色
  Summer();
  
  resetMatrix();
  drawSolar();
}

//雨
void drawSummer_Rain() {
  Sm_Ground(#cccccc); //この色は空の色
  Summer();
  
  for (int i = 0; i < R1; i++) {
    Rf1[i].Rdrop1();
  }
}

//雷雨
void drawSummer_Thunder() {
  Sm_Ground(#cccccc); //この色は空の色
  Summer();
  Thunder();
  
  for (int i = 0; i < R2; i++) {
    Rf2[i].Rdrop2();
  }
}


//夏管理---------------------------------------------------------
void Summer() { 
  pushMatrix(); pushMatrix(); pushMatrix(); pushMatrix(); //必要な数だけ座標系保存
  drawSunflower(width-200,height*1.8/5);
  popMatrix();
  drawSunflower(width-80,height*1.8/5);
  popMatrix();
  fill(#7053ec); //朝顔の色
  drawAsagao(60,height-110,0.7);
  popMatrix();
  fill(#f770e1); //朝顔の色
  drawAsagao(100,height-60,0.7);
  popMatrix();
  drawIceflag(width*13/15,0);
  
  resetMatrix();
}



//-------------------------------------------------------------------------------------------------
void Sm_Ground(color Sm_c) {
  
  background(Sm_c); //空の色
  
  float upper = -150;
  
  //山(右)
  fill(#007130);
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
  fill(#00873C);
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
  fill(0,153,68); //#009944
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


//向日葵-----------------------------------------------------
void drawSunflower(float x, float y) {
  int i;
  int N = 24;
  
 //基準点は花の中心
  translate(x,y);
  
 //座標系を保存
  pushMatrix();
  
 //茎
  stroke(#86b81b);
  strokeWeight(5);
  line(0,0,0,250);
  
 //葉
  noStroke();
  fill(#86b81b);
 //左側の葉
  rotate(PI/24);
  for (i = 0; i <= 3; i++) {
    ellipse(-5*i,210-40*i,60,20);
  }
 //右側の葉
  popMatrix(); //座標系を戻す
  rotate(-PI/24);
  for (i = 0; i <= 3; i++) {
    ellipse(5*i,220-40*i,60,20);
  }
  
  noStroke();

 //花
  fill(#ffff00);
  strokeWeight(0.5);
  stroke(100,57,22);
  ellipse(0,40,15,40);
  for (i = 1; i < N; i++) {
    rotate(PI/12);
    ellipse(0,40,15,40);
  }
  
 //花の真ん中のところ
  fill(100,57,22);
  ellipse(0,0,70,70);
  
 //真ん中のところの線
  stroke(#c49958);
  strokeWeight(2);
  for (i = -1; i <= 1; i++) {
    line(-25,-15*i,25,-15*i);
  }
  for (i = -1; i <= 1; i++) {
    line(-15*i,25,-15*i,-25);
  }
}


//朝顔-------------------------------------------------
void drawAsagao(float x, float y, float A_scale) {
  translate(x,y);
  
 //花びら部分
  noStroke();
  ellipse(0,0,100*A_scale,100*A_scale);
  
 //花の白いところ
  fill(255);
  beginShape();
  curveVertex(0,-40*A_scale);
  curveVertex(0,-40*A_scale);
  curveVertex(12*A_scale,-15*A_scale);
  curveVertex(35*A_scale,-15*A_scale);
  curveVertex(20*A_scale,5*A_scale);
  curveVertex(30*A_scale,30*A_scale);
  curveVertex(0,17*A_scale);
  curveVertex(-25*A_scale,30*A_scale);
  curveVertex(-13*A_scale,5*A_scale);
  curveVertex(-32*A_scale,-10*A_scale);
  curveVertex(-10*A_scale,-15*A_scale);
  curveVertex(0*A_scale,-40*A_scale);
  curveVertex(12*A_scale,-15*A_scale);
  endShape(CLOSE);
}

//かき氷の旗----------------------------------------------
void drawIceflag(float x, float y) {
  
  translate(x,y);
  
 //上の紐
  strokeWeight(1);
  stroke(0);
  line(0,0,-60,50);
  line(0,0,60,50);
  
 //
  stroke(#ff4040);
  strokeWeight(6);
  line(-60,50,60,50);
  
 //旗
  noStroke();
  fill(#7070ff);
  quad(-60,50,60,50,50,200,-70,200);
  
 //「氷」
  textAlign(CENTER);
  textFont(font,110);
  fill(#ffffff);
  text("氷",-5,150);
}
