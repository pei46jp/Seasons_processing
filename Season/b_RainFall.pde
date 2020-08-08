//降雪のクラス

class Rainfall {
  float Rx;
  float Ry;
  float Rs; // Size
  color Rc; // color
  float Rdy1; // Speed
  float Rdy2; // Speed
  
  Rainfall() {
    Rx = random(width);
    Ry = random(height);
    Rdy1 = random(5,8);
    Rdy2 = random(8,11);
    Rs = 3 * Rdy1 / 2.0;
    Rc = #6c6dff; //雨の色
  }
  
  void Rdrop1() {
    Ry += Rdy1;
    if (Ry > height) {
      Ry = 0;
    }
    rain();
  }
  
  void Rdrop2() {
    Ry += Rdy2;
    if (Ry > height) {
      Ry = 0;
    }
    rain();
  }
  
  void rain() {
    noStroke();
    fill(Rc);
    ellipseMode(CENTER);
    ellipse(Rx,Ry,0.8,50);
  }
}
