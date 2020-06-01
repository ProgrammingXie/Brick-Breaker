void GameChoose(){
  background(0);
  imageMode(CENTER);
  tint(255);
  image(BackgroundPixel,width/2,height/2);
  
  
  stroke(#2C96CE);
  strokeWeight(5);
  fill(0,0,0,Map1);
  rect(100,140,600,600,10);
  fill(0,0,0,Map2);
  rect(740,140,600,600,10);
  
  fill(255);
  textSize(35);
  textAlign(CENTER,CENTER);
  text("Presse '`' or '~' to pause",720,800);
  
  for (int x = -1; x < 2; x++) {
    fill(#77D8E8);
    textSize(110);
    textAlign(CENTER,CENTER);
    text("Map Selection",720+x,50);
    text("Map Selection",720,50+x);
  }
  fill(#1C2BBC);
  textSize(113);
  textAlign(CENTER,CENTER);
  text("Map Selection",720,50);

  if (mouseX>100 && mouseX<700 && mouseY>140 && mouseY<740){
    Map1 = 100; 
  }
 else {
   Map1 = 180;
  }

  if (mouseX>740 && mouseX<1340 && mouseY>140 && mouseY<740){
    Map2 = 100; 
  }
  else {
    Map2 = 180;
  }

  pushMatrix();
    fill(#001226);
    stroke(SettingMenu);
    strokeWeight(4);
    ellipse(90,820,100,100);
  
    translate(91,820);
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
  
  if (dist(mouseX,mouseY,90,820) < 50){
    SettingMenu = #8BC6D9;
  }
  else {
    SettingMenu = #4B8295;
  }




}
//=====================================================================================================================================

void GameChooseClick(){
  if (mouseX>100 && mouseX<700 && mouseY>140 && mouseY<740){
    MapSelection = 1;
    GameMode = Game;
  }

  if (mouseX>740 && mouseX<1340 && mouseY>140 && mouseY<740){
    MapSelection = 2; 
    GameMode = Game;
  } 
  
  if (dist(mouseX,mouseY,90,820) < 50){
    GameMode = GameMenu;
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
  }
  
}
