//降雪のクラス

class Snowfall {
  float Sx;
  float Sy;
  float Ss; //Size
  color Sc; //color
  float Sdy; //speed
  
  Snowfall() {
    Sx = random(width); 
    Sy = random(height);
    Sdy = random(0,3);
    Ss = 5 * Sdy / 2.0;
    Sc = #ffffff; //雪の色
  }
  void Sdrop() {
    Sy += Sdy;
    if (Sy > height) {
      Sy = 0;
    }
    
    noStroke();
    fill(Sc);
    ellipseMode(CENTER);
    ellipse(Sx,Sy,Ss,Ss);
  }
  
}
