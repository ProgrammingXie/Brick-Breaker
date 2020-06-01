class ChoosePatternBrick1 {

  float x1;
  float y1;
  float Colour3;
  float C;
  
  ChoosePatternBrick1(){
    x1 = gridX1;
    y1 = gridY1;
    Colour3 = random(0,3);
  }
  
  void show(){  
    fill(77,C,196);
    stroke(#F2ABDE);
    strokeWeight(1);
    ellipse(x1,y1,18,18);
    if (Colour3>0 && Colour3<=1){
      C = 82;
    }
    else if (Colour3>1 && Colour3<=2){
      C = 128;
    }
    if (Colour3>2 && Colour3<=3){
      C = 220;
    }
  }
  
}
//===============================================================================================================================
class ChoosePatternBrick2 {
  float x2;
  float y2;
  float Colour3;
  float C;
  
  ChoosePatternBrick2(){
    x2 = gridX2;
    y2 = gridY2;
    Colour3 = random(0,3);
  }
  
  void show(){ 
    fill(77,C,196);
    ellipse(x2,y2,18,18);
    if (Colour3>0 && Colour3<=1){
      C = 82;
    }
    else if (Colour3>1 && Colour3<=2){
      C = 128;
    }
    if (Colour3>2 && Colour3<=3){
      C = 220;
    }
  }
}
