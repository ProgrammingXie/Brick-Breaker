class Brick{
  
  float X;
  float Y;
  float Hp;
  float C;
  
  Brick(){
    X = gridXGame;
    Y = gridYGame;
    Hp = (int) random(1,4);
    //Hp = 1;
  }
  
  
  void act(){
    if (dist(X,Y,BallX,BallY) <= BallRadius/2 + 17 && Hp>0){
      BallvX = (BallX - X)/4;
      BallvY = (BallY - Y)/4;
      Hp = Hp - 1;
      BallStroke = 255;
    }
    else {
      BallStroke = 120;
    }
  }
  
  void show(){
    if (Hp>0){
      fill(77,C,196);
      stroke(#F2ABDE);
      strokeWeight(2);
      ellipse(X,Y,34,34);
      if (Hp==3){
        C = 82;
      }
      else if (Hp==2){
        C = 128;
      }
      if (Hp==1){
        C = 220;
      }
    }
  }
  
  

}
