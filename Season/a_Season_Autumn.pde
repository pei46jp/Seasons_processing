//秋晴れ
void drawAutumn_Sun() {
  A_Ground(#5050ff); //この色は空の色
  Autumn();
  
  resetMatrix();
  drawSolar();
}

//雨模様
void drawAutumn_Rain() {
  A_Ground(#cccccc); //この色は空の色
  Autumn();
  
  for (int i = 0; i < R1; i++) {
    Rf1[i].Rdrop1();
  }
}

//秋管理-----------------------------------------------
void Autumn() {
  pushMatrix();
  A_Shichirin(100,height-270);
  drawSanma();
  popMatrix();
  drawMatsu(width-450, 150);
  
  resetMatrix();
}

//--------------------------------------------------------------------------------
void A_Ground(color A_c) {
  
  background(A_c); //空の色
  
  float upper = -150;  
  
  //山(右)
  fill(189, 183, 107);
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
  fill(165, 42, 42);
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
  fill(#b8860b);
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



//七輪---------------------------------------------------------
void A_Shichirin(float x, float y) {
  int i;
  
  translate(x,y);
  
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
}



//秋刀魚----------------------------------------------------------------
void drawSanma() {
   
  translate(-130,-45);
  noStroke();
  float S_scale = 0.6;
  //尾びれ＆尻びれ
  fill(#bdb76b);
  beginShape();
  vertex(350*S_scale,250*S_scale);
  vertex(363*S_scale,233*S_scale); 
  vertex(337*S_scale,245*S_scale);
  vertex(350*S_scale,250*S_scale); 
  vertex(363*S_scale,265*S_scale);
  vertex(332*S_scale,250*S_scale);
  vertex(310*S_scale,250*S_scale);
  vertex(320*S_scale,258*S_scale); 
  vertex(291*S_scale,265*S_scale);
  vertex(285*S_scale,250*S_scale);
  endShape();
  //腹びれ
  fill(#bdb76b);
  beginShape();
  vertex(235*S_scale,260*S_scale);
  vertex(252*S_scale,267*S_scale); 
  vertex(250*S_scale,250*S_scale);
  endShape(CLOSE);
  //背びれ
  beginShape();
  fill(#bdb76b);
  vertex(310*S_scale,250*S_scale);
  vertex(323*S_scale,237*S_scale); 
  vertex(290*S_scale,227*S_scale);
  vertex(285*S_scale,250*S_scale);
  endShape(CLOSE);
  //本体
  fill(#c0c0c0);  //銀色部分
  beginShape();
  bezier(100*S_scale,250*S_scale,175*S_scale,225*S_scale,275*S_scale,225*S_scale,350*S_scale,250*S_scale);
  bezier(100*S_scale,250*S_scale,175*S_scale,265*S_scale,275*S_scale,265*S_scale,350*S_scale,250*S_scale); 
  fill(#4682b4);  //青の部分
  bezier(100*S_scale,250*S_scale,175*S_scale,225*S_scale,275*S_scale,225*S_scale,350*S_scale,250*S_scale);
  fill(#dcdcdc);  //白の部分
  beginShape();
  curveVertex(100*S_scale,250*S_scale);
  curveVertex(100*S_scale,250*S_scale);
  curveVertex(225*S_scale,240*S_scale);
  curveVertex(350*S_scale,250*S_scale);
  curveVertex(100*S_scale,250*S_scale);
  endShape(CLOSE);
  //目
  fill(#ffffff);
  beginShape();
  ellipse(130*S_scale,247*S_scale,8*S_scale,8*S_scale);
  endShape();
  fill(#000000);
  ellipse(130*S_scale,247*S_scale,4*S_scale,4*S_scale);
  //えら
  stroke(#000000);
  strokeWeight(0.1*S_scale);
  arc(130*S_scale,247*S_scale,40*S_scale,40*S_scale,radians(-25),radians(25),OPEN);
  noStroke();
  //胸びれ
  beginShape();
  fill(#bdb76b);
  vertex(152*S_scale,245*S_scale); vertex(173*S_scale,242*S_scale); 
  vertex(165*S_scale,250*S_scale); vertex(152*S_scale,250*S_scale);
  endShape(CLOSE);
}


//松-----------------------------------------------------------------
void drawMatsu(float Mx, float My) {
    
  translate(Mx,My);
  //幹
  fill(#8b4513);
  beginShape();
  curveVertex(290,450);
  curveVertex(290,450); 
  curveVertex(250,50);
  curveVertex(210,450);
  curveVertex(290,450);
  endShape(CLOSE);
  stroke(#8b4513);
  strokeWeight(15);
  line(250,340,360,280);
  line(250,250,150,210); 
  line(250,175,350,130);
  line(250,380,120,325);
  
  
  int pX[] = {-20,-90,-100,-410,-320};
  int pY[] = {-10,-230,-8,-125,-375};
  float scale[] = {1,1.2,0.75,1.5,1.55};
  
  for(int i = 0; i < 5; i++) {
  drawLeaves(pX[i],pY[i],scale[i]);
  }
  
}


//葉--------------------------------------------------------------
void drawLeaves(float x, float y, float scale) {
  
  pushMatrix();
  
  translate(x,y);
  
  beginShape();
  noStroke();
  fill(#2e8b57); //葉の塊
  ellipse(320*scale, 290*scale, 35*scale, 35*scale);
  ellipse(340*scale, 280*scale, 40*scale, 40*scale);
  ellipse(360*scale, 270*scale, 40*scale, 40*scale);
  ellipse(380*scale, 280*scale, 40*scale, 40*scale);
  ellipse(400*scale, 290*scale, 35*scale, 35*scale);
  stroke(#2e8b57); //塊のの下側
  strokeWeight(5*scale);
  curveVertex(320*scale,305*scale);
  curveVertex(320*scale,305*scale); 
  curveVertex(360*scale,290*scale);
  curveVertex(400*scale,305*scale);
  curveVertex(320*scale,305*scale);
  noStroke();
  strokeWeight(1.5*scale); //葉のライン
  stroke(#ffffe0);
  line(316*scale,286*scale,324*scale,298*scale);
  line(337*scale,276*scale,343*scale,293*scale);
  line(359*scale,270*scale,359*scale,300*scale);
  line(384*scale,275*scale,375*scale,300*scale);
  line(402*scale,286*scale,393*scale,300*scale);
  noStroke();
  endShape(CLOSE);
  
  popMatrix();
}
