//桜を降らすクラス

class C_B_fall {
  float Cx;
  float Cy;
  color Cc; // color
  float Cdx; // Speed_x
  float Cdy; // Speed_y
  
  C_B_fall() {
    Cx = random(width);
    Cy = random(height);
    Cdx = random(-2,2);
    Cdy = 1.5; 
    Cc = #ffdbed; //桜の色
  }
    
  void Cdrop() {
    Cx += Cdx;
    Cy += Cdy;
    if (Cy > height) {
      Cy = 0;
    }
    if (Cx > width) {
      Cx = 0;
    }
    if (Cx < 0) {
      Cx = width;
    }
    
    C_B_(Cx,Cy,Cc);
  }
}

void C_B_(float x, float y, color Cc) {
  
  translate(x,y);
  pushMatrix();
  
  noStroke();
  fill(Cc,200);
  rotate(PI/20);
  ellipse(0,-5,2.5,10);
  
  popMatrix();
  
  rotate(-PI/20);
  ellipse(0,-5,2.5,10);
  
  resetMatrix();
}
