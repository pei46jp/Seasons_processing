
//降雪
void drawWinter_Snow() {
  W_Ground(#cccccc); //この色は空の色
  Winter();
  
  for (int i = 0; i < S; i++) {
    Sf[i].Sdrop();
  }
}

//冬晴れ
void drawWinter_Sun() {
  W_Ground(#5050ff); //この色は空の色
  Winter();
  
  resetMatrix();
  drawSolar();
}

//冬管理-----------------------------------------------------
void Winter() {
  pushMatrix(); pushMatrix(); //必要な分、座標系を保存
  drawSnowman(width-250,height*2.2/5,#0000ff);
  popMatrix();
  drawSnowman(width-100,height*2/5,#ff0000);
  popMatrix();
  W_Shichirin(100,height-270);
  
  resetMatrix();
  
}

//-----------------------------------------------------------------------------------------------------
void W_Ground(color W_c) {
  
  background(W_c); //空の色

  float upper = -150;
  
  //山(右)
  fill(#fbfbfb);
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
  fill(#ffffff);
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
  fill(#f9f9f9);
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
//雪だるま-------------------------------------------------------
void drawSnowman(float x, float y, color Scolor) {
  
  translate(x,y); //基準：頭の上
  pushMatrix();
  
  fill(255);
  noStroke();
  ellipseMode(CENTER);

  //顔、胴体
  ellipse(0,50,90,90); 
  ellipse(0,120,110,110);

  fill(0);
  //目
  ellipse(-13,40,7,7); 
  ellipse(13,40,7,7);
  
  //ボタン
  for (int i = 1; i <= 3; i++) {
    fill(0);
    ellipse(0,100+i*15,5,5);
  }

  //バケツ
  noStroke();
  fill(Scolor);
  quad(0,5,12,-20,40,-10,30,15);

  //口
  stroke(0);
  strokeWeight(5);
  line(-10,60,10,60);
  
  //腕
  stroke(#4d1e09);
  strokeWeight(2);
  rotate(PI/5);
  line(-20,100,20,100);
  line(0,100,-10,90);
  popMatrix();
  rotate(-PI/5);
  line(-20,100,20,100);
  line(0,100,10,110);
  
}


//七輪-----------------------------------------------------------
void W_Shichirin(float x, float y) {
  int i;
  
  translate(x,y); //座標系ずらす
  
 //七輪
  strokeWeight(2.8);
  fill(#292929);
  ellipseMode(CENTER);
  
  stroke(#000000);
  ellipse(0,202,100,51);
  
  stroke(#fffbeb);
  for (i = 0; i < 9; i++) {
    ellipse(0,200+2*-i,100,50);
  }

  stroke(#d6cba1);
  for (i = 0; i < 10; i++) {
    ellipse(0,180+2*-i,100,50);
  }
  
  stroke(#fffbeb);
  for (i = 0; i < 15; i++) {
    ellipse(0,160+2*-i,100,50);
  }
  
  stroke(#000000);
  ellipse(0,130,120,50);
  
  stroke(#fffbeb);
  for (i = 0; i < 14; i++) {
    ellipse(0,128+2*-i,120,50);
  }
  
 //網
  strokeWeight(1.5);
  stroke(#9c9c9c);
  for (i = 0; i < 12; i++) {
    line(-100+5*i,115-5*i,50+5*i,140-5*i);
  }
  for (i = 0; i < 16; i++) {
    line(-100+10*i,115+1.8*i,-45+10*i,60+1.8*i);
  }
  
 //お餅
  noStroke();
  fill(#fff9e6);
  for (i = 0; i < 10; i++) {
    quad(-40,110-i,10,120-i,30,100-i,-20,90-i);
  }
  
  ellipseMode(CENTER);
  fill(#fff9e6);
  ellipse(-2,80,30,40);
  fill(#ffffff);
  ellipse(-3,80,25,35);
  
}
