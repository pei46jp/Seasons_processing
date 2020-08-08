void Thunder() {
  Thunder Thun = new Thunder(0,0,#ffffff);
  Thun.Birth();
  Thun.setPosition(450,0);
  Thun.dwThunder();
}


class Thunder {
  
private color Th_c = #ffffff; //雷の色

private float blurWeight = 10; //ぼかしの強度

private float margin = blurWeight * 2;

private float x, y;
private int w = 300; //幅
private int h = 500; //高さ

private PGraphics thunder; //メインイメージ
private PImage blurThunder; //blend用

private boolean enable = false; //表示するか否か

  //コンストラクタ
  public Thunder(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public Thunder(float x, float y, color Th_c) {
    this.x = x;
    this.y = y;
    this.Th_c = Th_c;
  }
  
  public Thunder(float x, float y, color Th_c, int blurWeight) {
    this.x = x;
    this.y = y;
    this.Th_c = Th_c;
    this.blurWeight = blurWeight;
  }
  
  
  //セッター
  //座標セット
  public void setPosition(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  public void setEnable(boolean enable) {
    this.enable = enable;
  }
  
  //ゲッター
  //ｘ座標
  public float getX() {
    return this.x;
  }
  //y座標
  public float getY() {
    return this.y;
  }
  //width
  public int getW() {
    return this.w;
  }
  //height
  public int getH() {
    return this.h;
  }
  //有効か否か
  public boolean getEnable() {
    return this.enable;
  }
  
  
  public void Birth() {
    
    thunder = createGraphics(w,h);
    blurThunder = createGraphics(w,h);
    
    thunder.beginDraw();
    
    thunder.background(Th_c,0);
    
    thunder.translate(w/2,0);
    
    thunder.stroke(Th_c);
    
    thunder.strokeWeight(3);
    thunder.line(0,0,-60,100);
    
    thunder.strokeWeight(2);
    thunder.line(-60,100,0,150);
    
    thunder.strokeWeight(1.5);
    thunder.line(0,150,-40,270);
    thunder.line(-10,20,-20,80);
    thunder.line(-40,270,-5,300);
    
    thunder.strokeWeight(0.8);
    thunder.line(-5,300,-20,400);
    thunder.line(-10,175,5,190);
    thunder.line(-20,80,-10,100);
    
    thunder.strokeWeight(1);
    thunder.line(-30,125,-70,170);
    
    thunder.strokeWeight(0.4);
    thunder.line(-70,170,-100,175);
    thunder.line(5,190,0,230);
    
    thunder.endDraw();
    
    
    //コピー実行
    blurThunder = thunder.get(0, 0, thunder.width, thunder.height);
    
    try {
      blurThunder.filter(BLUR, blurWeight);
    } catch ( ArithmeticException e ) {
      blurThunder.filter(BLUR, margin / 2);
      println(e);
    }
    
    thunder.blend(blurThunder, 0, 0, blurThunder.width, blurThunder.height, 0, 0, thunder.width, thunder.height, HARD_LIGHT);
    thunder.blend(blurThunder, 0, 0, blurThunder.width, blurThunder.height, 0, 0, thunder.width, thunder.height, SOFT_LIGHT);
    
    this.enable = true;
  }
  
  //描画
  public void dwThunder() {
    if (enable) {
      image(thunder, this.x, this.y);
    }
  }
  public void dwThunder(float x, float y) {
    if (enable) {
      image(thunder, x, y);
    }
  }
}
