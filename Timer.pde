void Timer(){
  if( millis() > Time && InGameSetting==0 && !GameEnds){// actual game
    TimeSecond2++;
    Time = millis() + 1000;
    
    if (TimeSecond2>9){
      TimeSecond2 = 0;
      TimeSecond1 = TimeSecond1 + 1;
    }
    if (TimeSecond2==0 && TimeSecond1==6){
      TimeSecond2 = 0;
      TimeSecond1 = 0;
      TimeMinute2 = TimeMinute2 + 1;
    }
    if (TimeMinute2>9){
      TimeMinute2 = 0;
      TimeMinute1 = TimeMinute1 + 1;
    }     
  }
       
     
    fill(255);
    textSize(30);
    textAlign(CORNER,CORNER);
    text("Time:",12,857);
    text(TimeMinute1,100,857);
    text(TimeMinute2,120,857);
    text(":",140,857);
    text(TimeSecond1,150,857);
    text(TimeSecond2,170,857);
}
