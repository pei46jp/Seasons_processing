//太陽

color Solr_c = #ff0000;
PGraphics Solar;
PImage solar;
float blurWeight = 10; //ぼかし強度___強くすると重くなる___これでも重いのよ
int w = 300;
int h = 300;


void drawSolar() {
  
  Solar = createGraphics(w,h);
  solar = createGraphics(w,h);
  
  Solar.beginDraw();
  
  Solar.background(Solr_c,0);
  Solar.noStroke();
  Solar.fill(Solr_c);
  
  Solar.ellipse(0,0,200,200);
  
  Solar.endDraw();
  
  solar = Solar.get(0,0,Solar.width,Solar.height);
  
  solar.filter(BLUR, blurWeight);
  
  Solar.blend(solar, 0, 0, solar.width, solar.height, 0, 0, Solar.width, Solar.height, HARD_LIGHT);
  Solar.blend(solar, 0, 0, solar.width, solar.height, 0, 0, Solar.width, Solar.height, SOFT_LIGHT);
  
  
  image(solar,0,0);
}
