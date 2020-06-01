void GameMusic(){
  background(0);
  imageMode(CENTER);
  tint(255);
  image(MusicBlue,width/2,400);
  
  strokeWeight(3);
  fill(FadeAwayFill,180);
  stroke(FadeAwayStroke);
  rect(58,57,1324,100,3);// Fade Song Base
  fill(CrabRaveFill,180);
  stroke(CrabRaveStroke);
  rect(58,177,1324,100,3);// CrabRave Song Base
  fill(CaffeineRushFill,180);
  stroke(CaffeineRushStroke);
  rect(58,297,1324,100,3);// CaffeineRush Song Base
  fill(JoyFill,180);
  stroke(JoyStroke);
  rect(58,417,1324,100,3);// Joy Song Base
  fill(RenegadeFill,180);
  stroke(RenegadeStroke);
  rect(58,537,1324,100,3);// Renagade Song Base
  fill(RiseFill,180);
  stroke(RiseStroke);
  rect(58,657,1324,100,3);// Rise Song Base
  
  fill(#2E3439);
  stroke(#24282D);
  strokeWeight(2);
  rect(85,95,24,24);// song CHECK base
  rect(85,215,24,24);
  rect(85,335,24,24);
  rect(85,455,24,24);
  rect(85,575,24,24);
  rect(85,695,24,24);
  
  fill(255);
  textSize(20);
  text("Fade Away (Deaf Kev Remix)", 125,100);
  text("- Jacob Tillberg",125,130);
  
  text("Crab Rave", 125,220);
  text("- Noisestorm",125,250);
  
  text("Caffeine Rush [JompaMusic Release]", 125,340);
  text("- Jacob Tillberg",125,370);
  
  text("Joy", 125,460);
  text("- Tobu",125,490);
  
  text("Renegade", 125,580);
  text("- The Living Proof",125,610);
  
  text("Rise", 125,700);
  text("- Slooze",125,730);
  
  
  strokeWeight(2);
  fill(0,0,0,Play1);
  stroke(FadeAwayStroke);
  ellipse(780,93,45,45);// FadeAway Play Button
  if (FadeAwayPlayButton==0){// FadeAway Play
    line(775,80, 775,106);
    line(785,80, 785,106);
    if (!FadeAway.isPlaying()){
        FadeAwayPlayButton = 1;
    }
  }
  else if (FadeAwayPlayButton==1){// FadeAwat Stop
    fill(FadeAwayStroke);
    triangle(773,83, 773,103, 792,93);
  }
  
  fill(0,0,0,Play2);
  stroke(CrabRaveStroke);
  ellipse(780,213,45,45);// CrabRave Play Button
  if (CrabRavePlayButton==0){// CrabRave Play
    line(775,200, 775,226);
    line(785,200, 785,226);
    if (!CrabRave.isPlaying()){
      CrabRavePlayButton = 1;
    }
  }
  else if (CrabRavePlayButton==1){// CrabRave Stop
    fill(CrabRaveStroke);
    pushMatrix();
    translate(0,120);
    triangle(773,83, 773,103, 792,93);
    popMatrix();
  }
  
  fill(0,0,0,Play3);
  stroke(CaffeineRushStroke);
  ellipse(780,333,45,45);// CaffeineRush Play BUtton
  if (CaffeineRushPlayButton==0){// CaffeineRush Play
    line(775,320, 775,346);
    line(785,320, 785,346);
    if (!CaffeineRush.isPlaying()){
      CaffeineRushPlayButton = 1;
    }
  }
  else if (CaffeineRushPlayButton==1){// CaffeineRush Stop
    fill(CaffeineRushStroke);
    pushMatrix();
    translate(0,240);
    triangle(773,83, 773,103, 792,93);
    popMatrix();
  }
  
  fill(0,0,0,Play4);
  stroke(JoyStroke);
  ellipse(780,453,45,45);// Joy Play Button
  if (JoyPlayButton==0){// Joy Play
    line(775,440, 775,466);
    line(785,440, 785,466);
    if (!Joy.isPlaying()){
      JoyPlayButton = 1;
    }
  }
  else if (JoyPlayButton==1){// Joy Stop
    fill(JoyStroke);
    pushMatrix();
    translate(0,360);
    triangle(773,83, 773,103, 792,93);
    popMatrix();
  }
  
  fill(0,0,0,Play5);
  stroke(RenegadeStroke);
  ellipse(780,573,45,45);// Renegade Play Button
  if (RenegadePlayButton==0){// Renegade Play
    line(775,560, 775,586);
    line(785,560, 785,586);
    if (!Renegade.isPlaying()){
      RenegadePlayButton = 1;
    }
  }
  else if (RenegadePlayButton==1){// Renegade Stop
    fill(RenegadeStroke);
    pushMatrix();
    translate(0,480);
    triangle(773,83, 773,103, 792,93);
    popMatrix();
  }
  
  fill(0,0,0,Play6);
  stroke(RiseStroke);
  ellipse(780,693,45,45);// Rise Play Button
  if (RisePlayButton==0){// Rise Play
    line(775,680, 775,706);
    line(785,680, 785,706);
    if (!Rise.isPlaying()){
      RisePlayButton = 1;
    }
  }
  else if (RisePlayButton==1){// Rise Stop
    fill(RiseStroke);
    pushMatrix();
    translate(0,600);
    triangle(773,83, 773,103, 792,93);
    popMatrix();
  }
  
  fill(0,0,0,FadeAwayReplayButton);
  stroke(FadeAwayStroke);
  ellipse(850,93,45,45);// FadeAway Replay
  ReplayButton();
  fill(0,0,0,CrabRaveReplayButton);
  stroke(CrabRaveStroke);
  ellipse(850,213,45,45);// CrabRave Replay
  pushMatrix();
  translate(0,120);
  ReplayButton();
  popMatrix();
  fill(0,0,0,CaffeineRushReplayButton);
  stroke(CaffeineRushStroke);// CaffeineRush Replay
  ellipse(850,333,45,45);
  pushMatrix();
  translate(0,240);
  ReplayButton();
  popMatrix();
  fill(0,0,0,JoyReplayButton);
  stroke(JoyStroke);
  ellipse(850,453,45,45);// Joy Replay
  pushMatrix();
  translate(0,360);
  ReplayButton();
  popMatrix();
  fill(0,0,0,RenegadeReplayButton);
  stroke(RenegadeStroke);
  ellipse(850,573,45,45);// Renegade Replay
  pushMatrix();
  translate(0,480);
  ReplayButton();
  popMatrix();
  fill(0,0,0,RiseReplayButton);
  stroke(RiseStroke);
  ellipse(850,693,45,45);// Rise Reply
  pushMatrix();
  translate(0,600);
  ReplayButton();
  popMatrix();
  
  textSize(21);
  fill(FadeAwayStroke);
  stroke(FadeAwayStroke,180);
  line(444,135, 1238,135);
  line(444,135,FadeAwayPlayLineX,135);
  noStroke();
  ellipse(FadeAwayPlayLineX,135,8,8);
  text("5:07",1255,142);
  
  fill(CrabRaveStroke);
  stroke(CrabRaveStroke,180);
  line(444,255, 1238,255);
  line(444,255,CrabRavePlayLineX,255);
  noStroke();
  ellipse(CrabRavePlayLineX,255,8,8);
  text("2:46",1255,262);
  
  fill(CaffeineRushStroke);
  stroke(CaffeineRushStroke,180);
  line(444,375, 1238,375);
  line(444,375,CaffeineRushPlayLineX,375);
  noStroke();
  ellipse(CaffeineRushPlayLineX,375,8,8);
  text("2:36",1255,382);
  
  fill(JoyStroke);
  stroke(JoyStroke,180);
  line(444,495, 1238,495);
  line(444,495,JoyPlayLineX,495);
  noStroke();
  ellipse(JoyPlayLineX,495,8,8);
  text("3:27",1255,502);
  
  fill(RenegadeStroke);
  stroke(RenegadeStroke,180);
  line(444,615, 1238,615);
  line(444,615,RenegadePlayLineX,615);
  noStroke();
  ellipse(RenegadePlayLineX,615,8,8);
  text("4:24",1255,622);
  
  fill(RiseStroke);
  stroke(RiseStroke,180);
  line(444,735, 1238,735);
  line(444,735,RisePlayLineX,735);
  noStroke();
  ellipse(RisePlayLineX,735,8,8);
  text("4:26",1255,742);
  
 
  
  if (FadeAway.isPlaying()){
    FadeAwayPlayLineX = FadeAwayPlayLineX + 0.044;
  }
  else if (CrabRave.isPlaying()){
    CrabRavePlayLineX = CrabRavePlayLineX + 0.087;
  }
  else if (CaffeineRush.isPlaying()){
    CaffeineRushPlayLineX = CaffeineRushPlayLineX + 0.0852;
  }
  else if (Joy.isPlaying()){
    JoyPlayLineX = JoyPlayLineX + 0.0641;
  }
  else if (Renegade.isPlaying()){
    RenegadePlayLineX = RenegadePlayLineX + 0.051;
  }
  else if (Rise.isPlaying()){
    RisePlayLineX = RisePlayLineX + 0.051;
  }
  
  
  
  if (dist(mouseX,mouseY,850,93) < 22.5){
    FadeAwayReplayButton = 90;
  }
  else {
    FadeAwayReplayButton = 0;
  }
  if (dist(mouseX,mouseY,850,213) < 22.5){
    CrabRaveReplayButton = 90;
  }
  else {
    CrabRaveReplayButton = 0;
  }
  if (dist(mouseX,mouseY,850,333) < 22.5){
    CaffeineRushReplayButton = 90;
  }
  else {
    CaffeineRushReplayButton = 0;
  }
  if (dist(mouseX,mouseY,850,453) < 22.5){
    JoyReplayButton = 90;
  }
  else {
    JoyReplayButton = 0;
  }
  if (dist(mouseX,mouseY,850,573) < 22.5){
    RenegadeReplayButton = 90;
  }
  else {
    RenegadeReplayButton = 0;
  }
  if (dist(mouseX,mouseY,850,693) < 22.5){
    RiseReplayButton = 90;
  }
  else {
    RiseReplayButton = 0;
  }
  
  
  if (dist(mouseX,mouseY,780,93) < 22.5){
    Play1 = 70;
  }
  else {
    Play1 = 0;
  }
  if (dist(mouseX,mouseY,780,213) < 22.5){
    Play2 = 70;
  }
  else {
    Play2 = 0;
  }
  if (dist(mouseX,mouseY,780,333) < 22.5){
    Play3 = 70;
  }
  else {
    Play3 = 0;
  }
  if (dist(mouseX,mouseY,780,453) < 22.5){
    Play4 = 70;
  }
  else {
    Play4 = 0;
  }
  if (dist(mouseX,mouseY,780,573) < 22.5){
    Play5 = 70;
  }
  else {
    Play5 = 0;
  }
  if (dist(mouseX,mouseY,780,693) < 22.5){
    Play6 = 70;
  }
  else {
    Play6 = 0;
  }

  
  if (mouseX>58 && mouseX<1382 && mouseY>57 && mouseY<157){// FadeAway
    FadeAwayStroke = 255;
  }
  else {
    FadeAwayStroke = 10;
  }
  if (mouseX>58 && mouseX<1382 && mouseY>177 && mouseY<277){// CrabRave
    CrabRaveStroke = 255;
  }
  else {
    CrabRaveStroke = 10;
  }
  if (mouseX>58 && mouseX<1382 && mouseY>297 && mouseY<397){// CaffeineRush
    CaffeineRushStroke = 255;
  }
  else {
    CaffeineRushStroke = 10;
  }
  if (mouseX>58 && mouseX<1382 && mouseY>417 && mouseY<517){// Joy
    JoyStroke = 255;
  }
  else {
    JoyStroke = 10;
  }
  if (mouseX>58 && mouseX<1382 && mouseY>537 && mouseY<637){// Renagade
    RenegadeStroke = 255;
  }
  else {
    RenegadeStroke = 10;
  }
  if (mouseX>58 && mouseX<1382 && mouseY>657 && mouseY<757){// Rise
    RiseStroke = 255;
  }
  else {
    RiseStroke = 10;
  }

  if (FadeAwayCheck){// FadeAway check
    SongPick();
  }
  else if (CrabRaveCheck){// CrabRave check
    pushMatrix();
    translate(0,120);
    SongPick();
    popMatrix();
  }
  else if (CaffeineRushCheck){// CaffeineRush check
    pushMatrix();
    translate(0,240);
    SongPick();
    popMatrix();
  }
  else if (JoyCheck){// Joy check
    pushMatrix();
    translate(0,360);
    SongPick();
    popMatrix();
  }
  else if (RenagadeCheck){// Renagade check
    pushMatrix();
    translate(0,480);
    SongPick();
    popMatrix();
  }
  else if (RiseCheck){// Rise check
    pushMatrix();
    translate(0,600);
    SongPick();
    popMatrix();
  }










 pushMatrix();
    fill(#001226);
    stroke(SettingMenu);
    strokeWeight(4);
    ellipse(90,830,100,100);
  
    translate(91,830);
    rectMode(CENTER);
    stroke(SettingMenu);
    int i = 0;
    while (i < 4 ){
      rotate(radians(45));
      rect(0,0,14,70);
      
      i = i + 1;
    }
    noStroke();
    ellipse(0,0,40,40);
    fill(SettingMenu);
    ellipse(0,0,23,23);
    rectMode(CORNER);
  popMatrix();
  
  if (dist(mouseX,mouseY,90,830) < 50){
    SettingMenu = #8BC6D9;
  }
  else {
    SettingMenu = #4B8295;
  }

}
//=====================================================================================================================================

void GameMusicClick(){
  if (dist(mouseX,mouseY,90,830) < 50){
    GameMode = GameMenu;
    FadeAwayPlayButton = 1;
    CrabRavePlayButton = 1;
    CaffeineRushPlayButton = 1;
    JoyPlayButton = 1;
    RenegadePlayButton = 1;
    RisePlayButton = 1;
    FadeAway.pause();
    CrabRave.pause();
    CaffeineRush.pause();
    Joy.pause();
    Renegade.pause();
    Rise.pause();
    FadeAway.rewind();
    CrabRave.rewind();
    CaffeineRush.rewind();
    Joy.rewind();
    Renegade.rewind();
    Rise.rewind();
    FadeAwayPlayLineX = 444;
    CrabRavePlayLineX = 444;
    CaffeineRushPlayLineX = 444;
    JoyPlayLineX = 444;
    RenegadePlayLineX = 444;
    RisePlayLineX = 444;
  }
  
  
  if (mouseX>58 && mouseX<1382 && mouseY>57 && mouseY<157){// FadeAway
    PickSongNumber = 1;
    FadeAwayCheck = true; 
    CrabRaveCheck = false; 
    CaffeineRushCheck = false; 
    JoyCheck = false; 
    RenagadeCheck = false; 
    RiseCheck = false; 
    FadeAwayFill = #4988C9;
    CrabRaveFill = #FFEC81; 
    CaffeineRushFill = #FFEC81; 
    JoyFill = #FFEC81; 
    RenegadeFill = #FFEC81; 
    RiseFill = #FFEC81; 
  }
  else if (mouseX>58 && mouseX<1382 && mouseY>177 && mouseY<277){// CrabRave
    PickSongNumber = 2;
    FadeAwayCheck = false; 
    CrabRaveCheck = true; 
    CaffeineRushCheck = false; 
    JoyCheck = false; 
    RenagadeCheck = false; 
    RiseCheck = false; 
    FadeAwayFill = #FFEC81;
    CrabRaveFill = #4988C9; 
    CaffeineRushFill = #FFEC81; 
    JoyFill = #FFEC81; 
    RenegadeFill = #FFEC81; 
    RiseFill = #FFEC81; 
  }
  else if (mouseX>58 && mouseX<1382 && mouseY>297 && mouseY<397){// CaffeineRush
    PickSongNumber = 3;
    FadeAwayCheck = false; 
    CrabRaveCheck = false; 
    CaffeineRushCheck = true; 
    JoyCheck = false; 
    RenagadeCheck = false; 
    RiseCheck = false; 
    FadeAwayFill = #FFEC81;
    CrabRaveFill = #FFEC81; 
    CaffeineRushFill = #4988C9; 
    JoyFill = #FFEC81; 
    RenegadeFill = #FFEC81; 
    RiseFill = #FFEC81; 
  }
  else if (mouseX>58 && mouseX<1382 && mouseY>417 && mouseY<517){// Joy
    PickSongNumber = 4;
    FadeAwayCheck = false; 
    CrabRaveCheck = false; 
    CaffeineRushCheck = false; 
    JoyCheck = true; 
    RenagadeCheck = false; 
    RiseCheck = false; 
    FadeAwayFill = #FFEC81;
    CrabRaveFill = #FFEC81; 
    CaffeineRushFill = #FFEC81; 
    JoyFill = #4988C9; 
    RenegadeFill = #FFEC81; 
    RiseFill = #FFEC81; 
  }
  else if (mouseX>58 && mouseX<1382 && mouseY>537 && mouseY<637){// Renagade
    PickSongNumber = 5;
    FadeAwayCheck = false; 
    CrabRaveCheck = false; 
    CaffeineRushCheck = false; 
    JoyCheck = false; 
    RenagadeCheck = true; 
    RiseCheck = false; 
    FadeAwayFill = #FFEC81;
    CrabRaveFill = #FFEC81; 
    CaffeineRushFill = #FFEC81; 
    JoyFill = #FFEC81; 
    RenegadeFill = #4988C9; 
    RiseFill = #FFEC81; 
  }
  else if (mouseX>58 && mouseX<1382 && mouseY>657 && mouseY<757){// Rise
    PickSongNumber = 6;
    FadeAwayCheck = false; 
    CrabRaveCheck = false; 
    CaffeineRushCheck = false; 
    JoyCheck = false; 
    RenagadeCheck = false; 
    RiseCheck = true; 
    FadeAwayFill = #FFEC81;
    CrabRaveFill = #FFEC81; 
    CaffeineRushFill = #FFEC81; 
    JoyFill = #FFEC81; 
    RenegadeFill = #FFEC81; 
    RiseFill = #4988C9; 
  }

  if (dist(mouseX,mouseY,780,93) < 22.5){
    if (FadeAwayPlayButton==0){
      FadeAwayPlayButton = 1;
      FadeAway.pause();
    }
    else if (FadeAwayPlayButton==1){
      FadeAwayPlayButton = 0;
      CrabRavePlayButton = 1;
      CaffeineRushPlayButton = 1;
      JoyPlayButton = 1;
      RenegadePlayButton = 1;
      RisePlayButton = 1;
      FadeAway.play();
      CrabRave.pause();
      CaffeineRush.pause();
      Joy.pause();
      Renegade.pause();
      Rise.pause();
      if (FadeAwayPlayLineX>12431.6){
        FadeAway.rewind();
        FadeAwayPlayLineX = 444;
      }
    }
  }
  if (dist(mouseX,mouseY,780,213) < 22.5){
    if (CrabRavePlayButton==0){
      CrabRavePlayButton = 1;
      CrabRave.pause();
    }
    else if (CrabRavePlayButton==1){
      FadeAwayPlayButton = 1;
      CrabRavePlayButton = 0;
      CaffeineRushPlayButton = 1;
      JoyPlayButton = 1;
      RenegadePlayButton = 1;
      RisePlayButton = 1;
      FadeAway.pause();
      CrabRave.play();
      CaffeineRush.pause();
      Joy.pause();
      Renegade.pause();
      Rise.pause();
      if (CrabRavePlayLineX>1238.2){
        CrabRave.rewind();
        CrabRavePlayLineX = 444;
      }
    }
  }
  if (dist(mouseX,mouseY,780,333) < 22.5){
    if (CaffeineRushPlayButton==0){
      CaffeineRushPlayButton = 1;
      CaffeineRush.pause();
    }
    else if (CaffeineRushPlayButton==1){
      FadeAwayPlayButton = 1;
      CrabRavePlayButton = 1;
      CaffeineRushPlayButton = 0;
      JoyPlayButton = 1;
      RenegadePlayButton = 1;
      RisePlayButton = 1;
      FadeAway.pause();
      CrabRave.pause();
      CaffeineRush.play();
      Joy.pause();
      Renegade.pause();
      Rise.pause();
      if (CaffeineRushPlayLineX>1247.6){
        CaffeineRush.rewind();
        CaffeineRushPlayLineX = 444;
      }
    }
  }
  if (dist(mouseX,mouseY,780,453) < 22.5){
    if (JoyPlayButton==0){
      JoyPlayButton = 1;
      Joy.pause();
    }
    else if (JoyPlayButton==1){
      FadeAwayPlayButton = 1;
      CrabRavePlayButton = 1;
      CaffeineRushPlayButton = 1;
      JoyPlayButton = 0;
      RenegadePlayButton = 1;
      RisePlayButton = 1;
      FadeAway.pause();
      CrabRave.pause();
      CaffeineRush.pause();
      Joy.play();
      Renegade.pause();
      Rise.pause();
      if (RenegadePlayLineX>1239.7){
        Renegade.rewind();
        RenegadePlayLineX = 444;
      }
    }
  }
  if (dist(mouseX,mouseY,780,573) < 22.5){
    if (RenegadePlayButton==0){
      RenegadePlayButton = 1;
      Renegade.pause();
    }
    else if (RenegadePlayButton==1){
      FadeAwayPlayButton = 1;
      CrabRavePlayButton = 1;
      CaffeineRushPlayButton = 1;
      JoyPlayButton = 1;
      RenegadePlayButton = 0;
      RisePlayButton = 1;
      FadeAway.pause();
      CrabRave.pause();
      CaffeineRush.pause();
      Joy.pause();
      Renegade.play();
      Rise.pause();
      if (RisePlayLineX>1239.7){
        Rise.rewind();
        RisePlayLineX = 444;
      }
    }
  }
  if (dist(mouseX,mouseY,780,693) < 22.5){
    if (RisePlayButton==0){
      RisePlayButton = 1;
      Rise.pause();
    }
    else if (RisePlayButton==1){
      FadeAwayPlayButton = 1;
      CrabRavePlayButton = 1;
      CaffeineRushPlayButton = 1;
      JoyPlayButton = 1;
      RenegadePlayButton = 1;
      RisePlayButton = 0;
      FadeAway.pause();
      CrabRave.pause();
      CaffeineRush.pause();
      Joy.pause();
      Renegade.pause();
      Rise.play();
    }
  }
  
  
  if (dist(mouseX,mouseY,850,93) < 22.5){
    FadeAway.rewind();
    FadeAwayPlayLineX = 444;
    CrabRave.pause();
    CaffeineRush.pause();
    Joy.pause();
    Renegade.pause();
    Rise.pause();
    CrabRavePlayButton = 1;
    CaffeineRushPlayButton = 1;
    JoyPlayButton = 1;
    RenegadePlayButton = 1;
    RisePlayButton = 1;
  }
  if (dist(mouseX,mouseY,850,213) < 22.5){
    CrabRave.rewind();
    CrabRavePlayLineX = 444;
    FadeAway.pause();
    CaffeineRush.pause();
    Joy.pause();
    Renegade.pause();
    Rise.pause();
    FadeAwayPlayButton = 1;
    CaffeineRushPlayButton = 1;
    JoyPlayButton = 1;
    RenegadePlayButton = 1;
    RisePlayButton = 1;
  }
  if (dist(mouseX,mouseY,850,333) < 22.5){
    CaffeineRush.rewind();
    CaffeineRushPlayLineX = 444;
    FadeAway.pause();
    CrabRave.pause();
    Joy.pause();
    Renegade.pause();
    Rise.pause();
    FadeAwayPlayButton = 1;
    CrabRavePlayButton = 1;
    JoyPlayButton = 1;
    RenegadePlayButton = 1;
    RisePlayButton = 1;
  }
  if (dist(mouseX,mouseY,850,453) < 22.5){
    Joy.rewind();
    JoyPlayLineX = 444;
    FadeAway.pause();
    CaffeineRush.pause();
    CrabRave.pause();
    Renegade.pause();
    Rise.pause();
    FadeAwayPlayButton = 1;
    CaffeineRushPlayButton = 1;
    CrabRavePlayButton = 1;
    RenegadePlayButton = 1;
    RisePlayButton = 1;
  }
  if (dist(mouseX,mouseY,850,573) < 22.5){
    Renegade.rewind();
    RenegadePlayLineX = 444;
    FadeAway.pause();
    CaffeineRush.pause();
    Joy.pause();
    CrabRave.pause();
    Rise.pause();
    FadeAwayPlayButton = 1;
    CaffeineRushPlayButton = 1;
    JoyPlayButton = 1;
    CrabRavePlayButton = 1;
    RisePlayButton = 1;
  }
  if (dist(mouseX,mouseY,850,693) < 22.5){
    Rise.rewind();
    RisePlayLineX = 444;
    FadeAway.pause();
    CaffeineRush.pause();
    Joy.pause();
    Renegade.pause();
    CrabRave.pause();
    FadeAwayPlayButton = 1;
    CaffeineRushPlayButton = 1;
    JoyPlayButton = 1;
    RenegadePlayButton = 1;
    CrabRavePlayButton = 1;
  }

}
//=====================================================================================================================================

void SongPick(){
  fill(#1B232C);
  stroke(#141D26);
  rect(85,95,24,24);
  fill(220);
  noStroke();
  pushMatrix();
  translate(-539,-459);
  beginShape();
  vertex(626,569);
  vertex(634,576);
  vertex(646,558);
  vertex(644,555);
  vertex(634,568);
  vertex(630,564);
  endShape(CLOSE);
  popMatrix();
}
//======================================================================================================================================

void ReplayButton(){
  noFill();
  bezier(861,84, 879,117, 815,112,843,83);
  line(844,83, 844,93);
  line(843,83, 835,86);
}
