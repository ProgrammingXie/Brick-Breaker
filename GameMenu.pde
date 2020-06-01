void GameMenu(){
  background(0);
  imageMode(CENTER);
  tint(170);
  image(Menu,width/2,height/2);
  
  fill(#FFFFFF);
  textSize(20);
  text("Made By Ethan Xie",9,894);  
  
  PlayGameButton();
  SettingButton();
  MusicButton();
  
  for (int x = -1; x < 2; x++) {
    fill(#77D8E8);
    textSize(125);
    textAlign(CENTER,CENTER);
    text("BRICK BREACKER",720+x,100);// ct
    text("BRICK BREACKER",720,100+x);
  }
  fill(#005DAD);
  textSize(124);
  textAlign(CENTER,CENTER);
  text("BRICK BREACKER",720,100);
  
  fill(0,0,0,GameMenuFade);
  noStroke();
  rect(0,0,width,height);
  
  GameMenuFade = GameMenuFade - 2;
  
  if (GameMenuFade<=0){
    GameMenuFade = 0;
    if (mouseX>480 & mouseX<960 && mouseY>276 && mouseY<424){
      PlayStroke = 255;
      PlayBackground = 200;
    }
    else {
      PlayStroke = 150;
      PlayBackground = 140;
    }
    
    if (mouseX>480 & mouseX<960 && mouseY>476 && mouseY<624){
      OptionStroke = 255;
      OptionBackground = 200;
    }
    else {
      OptionStroke = 150;
      OptionBackground = 140;
    } 
    
    if (mouseX>480 & mouseX<960 && mouseY>676 && mouseY<824){
      MusicStroke = 255;
      MusicBackground = 200;
    }
    else {
      MusicStroke = 150;
      MusicBackground = 140;
    } 
  }
 
}
//=====================================================================================================================================================



void GameMenuClick(){
  if (GameMenuFade<=0){
    if (mouseX>480 & mouseX<960 && mouseY>276 && mouseY<424){
      GameMode = GameChoose;
      FadeAway.rewind();
      CrabRave.rewind();
      CaffeineRush.rewind();
      Joy.rewind();
      Renegade.rewind();
      Rise.rewind();
    }
    else if (mouseX>480 & mouseX<960 && mouseY>476 && mouseY<624){
      GameMode = GameSetting;
      SettingOptions = 0;
    }
    else if (mouseX>480 & mouseX<960 && mouseY>676 && mouseY<824){
      GameMode = GameMusic;
    }
  }
} 
//=====================================================================================================================================================

void PlayGameButton(){
  fill(0,119,137,PlayBackground);
  noStroke();
  beginShape();
  vertex(514,286);
  vertex(950,286);
  vertex(950,390);
  vertex(926,414);
  vertex(490,414);
  vertex(490,310);
  endShape();
  
  noFill();
  stroke(#00DBDE);
  strokeWeight(5);
  beginShape();
  vertex(504,276);
  vertex(960,276);
  vertex(960,400);
  vertex(936,424);
  vertex(480,424);
  vertex(480,300);
  endShape(CLOSE);
  
  fill(PlayStroke);
  textSize(40);
  textAlign(CENTER);
  text("Play Game",width/2,370);
}
//=====================================================================================================================================================
void SettingButton(){
  fill(0,119,137,OptionBackground);
  noStroke();
  beginShape();
  vertex(514,486);
  vertex(950,486);
  vertex(950,590);
  vertex(926,614);
  vertex(490,614);
  vertex(490,510);
  endShape();
  
  noFill();
  stroke(#00DBDE);
  strokeWeight(5);
  beginShape();
  vertex(504,476);
  vertex(960,476);
  vertex(960,600);
  vertex(936,624);
  vertex(480,624);
  vertex(480,500);
  endShape(CLOSE);
  
  fill(OptionStroke);
  textSize(40);
  textAlign(CENTER);
  text("Setting",width/2,570);
}
//=====================================================================================================================================================
void MusicButton(){
  fill(0,119,137,MusicBackground);
  noStroke();
  beginShape();
  vertex(514,686);
  vertex(950,686);
  vertex(950,790);
  vertex(926,814);
  vertex(490,814);
  vertex(490,710);
  endShape();
  
  noFill();
  stroke(#00DBDE);
  strokeWeight(5);
  beginShape();
  vertex(504,676);
  vertex(960,676);
  vertex(960,800);
  vertex(936,824);
  vertex(480,824);
  vertex(480,700);
  endShape(CLOSE);
  
  fill(MusicStroke);
  textSize(40);
  textAlign(CENTER);
  text("Music",width/2,770);
}
//=====================================================================================================================================================
void GameHeading(){
  //fill(#005DAD);
  noFill();
  strokeWeight(2);
  beginShape();
  vertex(283,68);
  vertex(325,68);
  vertex(335,78);
  vertex(335,105);
  vertex(320,113);
  vertex(335,121);
  vertex(335,138);
  vertex(335,148);
  vertex(325,158);
  vertex(283,158);
  endShape(CLOSE);


}
