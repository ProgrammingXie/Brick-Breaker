import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer FadeAway, CrabRave, CaffeineRush, Joy, Renegade, Rise;

ArrayList<ChoosePatternBrick1> myBrick1;
ArrayList<ChoosePatternBrick2> myBrick2;
ArrayList<Brick> myBrickMap1;
ArrayList<Brick> myBrickMap2;

PImage OfficePlantLeft;
PImage OfficePlant;
PImage OfficePlantRight;
PImage Menu;
PImage MenuSetting;
PImage BackgroundPixel;
PImage MusicBlue;
PImage GameBackground;

int TextColour = 255;
int BeginningEnding = 0;
int BeginText = 0;
int BeginTextNumber = 0;
int GameBegins = 0;
int BeginningBlackScreem = 255;
boolean GameMachineStroke = false;
int OfficeMoving = 0;
int OfficePlantsMove = 0;
int MachineY = 0;

int GameMenuFade = 255;
int PlayStroke = 150;
int PlayBackground = 170;
int OptionStroke = 150;
int OptionBackground = 170;
int MusicStroke = 150;
int MusicBackground = 170;
int SettingMenu = 150;
int ReturnMenu = 150;

int Confirm = #29715C;
int DefaultSetting = #836729;

int SpeedButton = 200;
int PaddleSizeButton = 200;
int BallSpeedButton = 200; 
int BallSizeButton = 200;
int SpeedButtonWord = 140;
int PaddleSizeButtonWord = 140;
int BallSpeedButtonWord = 140; 
int BallSizeButtonWord = 140;
int SettingOptions = 0;

boolean PaddleMoveRight = false;
boolean PaddleMoveLeft = false;
int PaddleX = 720;// game start paddle position
int PaddleY = 900;
int PaddleXSetting = 503;// paddle x postion speed
float PaddleRadius;// true radius
float PaddleRadiusNumber = 150;// 210 to 90 for PaddleSpeed
float PaddleRadiusNumberChosing = 150;// For Radius
int PaddleSpeed = 12;// Paddle Speed
int PaddleSpeedBackUp = 12;// Paddle Speed Backup
int PaddleSpeedChosing = 12;
int PaddleSpeedReverse = 0;

float PaddleColour = 0;
int PaddleSpeed1Stroke = 90;
int PaddleSpeed2Stroke = 90;
int PaddleSpeed3Stroke = 90;
int PaddleSpeed4Stroke = 90;
int PaddleSpeed5Stroke = 90;
int PaddleSpeed6Stroke = 90;
int PaddleSpeed1Pick = 0;
int PaddleSpeed2Pick = 0;
int PaddleSpeed3Pick = 1;
int PaddleSpeed4Pick = 0;
int PaddleSpeed5Pick = 0;
int PaddleSpeed6Pick = 0;

float PaddleSizeY = 310;// Paddle Size
float PaddleSizeYBackUp = 310;// Paddle Size Backup
int PaddleSizeYStroke = 0;

int BallSpeed1Stroke = 90;
int BallSpeed2Stroke = 90;
int BallSpeed3Stroke = 90;
int BallSpeed4Stroke = 90;
int BallSpeed5Stroke = 90;
int BallSpeed6Stroke = 90;
int BallSpeed1Pick = 0;
int BallSpeed2Pick = 0;
int BallSpeed3Pick = 0;
int BallSpeed4Pick = 1;
int BallSpeed5Pick = 0;
int BallSpeed6Pick = 0;
int BallSpeed = 10;// Ball Speed
int BallSpeedBackup = 10;// Ball Speed Backuo
int BallSettingX = 674;
int BallSettingY = 227;
int BallSettingvX = 5;
int BallSettingvY = 5;

int FadeAwayFill = #4988C9; 
int CrabRaveFill = #FFEC81; 
int CaffeineRushFill = #FFEC81; 
int JoyFill = #FFEC81; 
int RenegadeFill = #FFEC81; 
int RiseFill = #FFEC81; 

int FadeAwayStroke = 0; 
int CrabRaveStroke = 0; 
int CaffeineRushStroke = 0; 
int JoyStroke = 0; 
int RenegadeStroke = 0; 
int RiseStroke = 0; 

boolean FadeAwayCheck = true; 
boolean CrabRaveCheck = false; 
boolean CaffeineRushCheck = false; 
boolean JoyCheck = false; 
boolean RenagadeCheck = false; 
boolean RiseCheck = false; 

int Play1 = 0;
int Play2 = 0;
int Play3 = 0;
int Play4 = 0;
int Play5 = 0;
int Play6 = 0;

int FadeAwayPlayButton = 1;
int CrabRavePlayButton = 1;
int CaffeineRushPlayButton = 1;
int JoyPlayButton = 1;
int RenegadePlayButton = 1;
int RisePlayButton = 1;

int FadeAwayReplayButton = 0;
int CrabRaveReplayButton = 0;
int CaffeineRushReplayButton = 0;
int JoyReplayButton = 0;
int RenegadeReplayButton = 0;
int RiseReplayButton= 0;

float FadeAwayPlayLineX = 444;
float CrabRavePlayLineX = 444;
float CaffeineRushPlayLineX = 444;
float JoyPlayLineX = 444;
float RenegadePlayLineX = 444;
float RisePlayLineX = 444;
int PickSongNumber = 1;

float gridX1 = 140;
float gridY1 = 180;
int gridXMove = 20;
int gridYMove = 0;
float gridX2 = 780;
float gridY2 = 180;
float gridXGame = 100;
float gridYGame = 70;
float griXGameMove = 20;

int Map1 = 180;
int Map2 = 180;
int MapSelection;

float BallX = 720;
float BallY = 760;
float BallvX = 0;
float BallvY = 8;
int BallNumebrs;
int BallStroke = 120;

//int FadeAwayReplayButtonFill = 0;
//int CrabRaveReplayButtonFill = 0;
//int CaffeineRushReplayButtonFill = 0;
//int JoyReplayButtonFill = 0;
//int RenegadeReplayButtonFill = 0;
//int RiseReplayButtonFill = 0;

int BallRadius = 50;

int Miss = 0;
int Time;
int TimeSecond2 = 0;
int TimeSecond1 = 0;
int TimeMinute1 = 0;
int TimeMinute2 = 0;

boolean GamePause = false;
int InGameSetting = 0;
int GameSideBarX = 1445;
int OptionQuitGame = #ABAFF5;
int ReturnGame = #ABAFF5;
boolean QuitButtonShow = false;
boolean ReturnButtonShow = false;
int Quit = 0;

int Count1 = 0;
int Count2 = 0;
boolean GameEnds = false;
int Retry = 0;
int Exit = 0;

int GameMode;
final int GameLoadingAnimation = 0;
final int GameMenu = 1;
final int GameSetting = 2;
final int GameChoose = 3;
final int Game = 4;
final int GameMusic = 5;

void setup(){
  
  //GameMode = GameLoadingAnimation;
  //GameMode = GameMenu;
  //GameMode = GameSetting;
  GameMode = GameChoose;
  //GameMode = GameMusic;
  GameMenuFade = 0;
  //GameMode = Game;
  //MapSelection = 2;
  
  OfficePlantLeft = loadImage("OfficePlantLeft.png");
  OfficePlant = loadImage("OfficePlant.png");
  OfficePlantRight = loadImage("OfficePlantRight.png");
  Menu = loadImage("Menu.jpg");
  MenuSetting = loadImage("MenuSetting.png");
  BackgroundPixel = loadImage("BackgroundPixel.jpg");
  MusicBlue = loadImage("Blue.png");
  GameBackground = loadImage("AbstractB.jpg");
  
  minim = new Minim(this);
  FadeAway = minim.loadFile("FadeAway.mp3");
  CrabRave = minim.loadFile("CrabRave.mp3");
  CaffeineRush = minim.loadFile("CaffeineRush.mp3");
  Joy = minim.loadFile("Joy.mp3");
  Renegade = minim.loadFile("Renegade.mp3");
  Rise = minim.loadFile("Rise.mp3");  
  
  myBrick1 = new ArrayList<ChoosePatternBrick1>();
  int i = 0;
  while (i<187){
    myBrick1.add( new ChoosePatternBrick1());
    
    if (gridY1<610){
      gridX1 = gridX1 + 20;
      if (gridX1>680-gridXMove){
        gridX1 = 140 + gridXMove;
        gridY1 = gridY1 + 32;
        gridXMove = gridXMove + 20;
      }
    }
    i = i + 1;
  }
  
  myBrick2 = new ArrayList<ChoosePatternBrick2>();
  int l = 0;
  while (l<210){
    myBrick2.add( new ChoosePatternBrick2());  
    if (gridY2<610){
      if (gridX2==880 && gridY2>342){
        gridX2 = gridX2 + 320;
      }
      else {
        gridX2 = gridX2 + 20;
      }  
      
      if (gridX2>1310){
        if (gridY2==340){
          gridY2 = gridY2 + 60;
        }
        gridY2 = gridY2 + 32;
        gridX2 = 780;
      }   
    }
    l = l + 1;
  }
 
 
  myBrickMap1 = new ArrayList<Brick>();
  int g = 0;
  while (g<272){
    myBrickMap1.add( new Brick());
    if (gridYGame<900){  
      gridXGame = gridXGame + 40;
      if (gridXGame>1380-griXGameMove){
        gridXGame = 100 + griXGameMove;
        gridYGame = gridYGame + 40;
        griXGameMove = griXGameMove + 40;
      } 
    }
    g = g + 1;
  }
  
  gridXGame = 100;
  gridYGame = 70;
  
  myBrickMap2 = new ArrayList<Brick>();
  int h = 0;
  while (h<252){
    myBrickMap2.add ( new Brick());
    if (gridYGame<900){
      if (gridXGame==300 && gridYGame>350){
        gridXGame = gridXGame + 840;
      }
      else {
      gridXGame = gridXGame + 40;
      }
        
     if (gridXGame>1340){
        if (gridYGame==270){
          gridYGame = gridYGame + 100;
        }
        gridYGame = gridYGame + 40;
        gridXGame = 100;
      }         
    }  
    h = h + 1;
  }
  
  Time = millis() + 1000;
  
  size(1440,900);
  //fullScreen();
}
//========================================================================================================================
void draw(){

  println(mouseX,mouseY);
  
  if (GameMode==GameLoadingAnimation){
    GameLoadingAnimation();
  }
  else if (GameMode==GameMenu){
    GameMenu();
  }
  else if (GameMode==GameSetting){
    GameSetting();
  }
  else if (GameMode==GameChoose){
    GameChoose();
    int i = 0;
    while (i<187){
      ChoosePatternBrick1 s = myBrick1.get(i);
      s.show();
      i = i + 1;
    }    
    int l = 0;
    while (l<210){
      ChoosePatternBrick2 v = myBrick2.get(l);
      v.show();
      l = l + 1;
    } 
  }
  else if (GameMode==Game){
    PaddleRadius = PaddleRadiusNumber;
    Game();   
    if (MapSelection==1){
      int g = 0;
      while (g<272){
        Brick m = myBrickMap1.get(g);
        m.show();
        m.act();
        g = g + 1;
      }
      
      for (Brick b: myBrickMap1){
        if (b.Hp==0){
          Count1 = Count1 + 1;
          b.Hp = -1;
        }
      }  
    }
    else if (MapSelection==2){
      int h = 0;
      while (h<252){
        Brick n = myBrickMap2.get(h);
        n.show();
        n.act();
        h = h + 1;
      }
      
      for (Brick b: myBrickMap2){
        if (b.Hp==0){
          Count2 = Count2 + 1;
          b.Hp = -1;
        }
      }  
    }
    
    if (InGameSetting==1){
      fill(0,0,0,180);
      noStroke();
      rect(0,0,width,height);
      
      fill(#2C71B4);
      stroke(#00C2E3);
      strokeWeight(5);
      rect(GameSideBarX,-10,140,920);
      
      GameSideBarX = GameSideBarX - 7;
      if (GameSideBarX<=1305){
        GameSideBarX = 1305;
      }
    }
    else if (InGameSetting==0){
        GameSideBarX = 1445;
    }
    
    pushMatrix();
      translate(GameSideBarX-10,0);
      fill(OptionQuitGame);
      stroke(0);
      strokeWeight(3);
      ellipse(72,840,60,60);// leave game button
      line(58,826, 86,852);
      line(58,852, 86,826);
        
      fill(ReturnGame);// return game button
      ellipse(72,70,60,60);
      fill(0);
      noStroke();
      rect(52,66,26,8);
      triangle(94,69, 78,58, 78,84);   
    popMatrix();
    
    if (InGameSetting==1 && GameSideBarX==1305 && Quit==0){
      if (dist(1367,840,mouseX,mouseY) < 30){
        OptionQuitGame = #ABE4F5;
      }
      else {
        OptionQuitGame = #ABAFF5;
      }
      if (dist(1367,66,mouseX,mouseY) < 30){
        ReturnGame = #ABE4F5;
      }
      else {
        ReturnGame = #ABAFF5;
      }   
    }
    
    if (Quit==1){
      QuitGame();
    }
    else {}
    
    if (Count1== 272 || Count2==252){
      GameEnds = true;
      fill(0,0,0,180);
      noStroke();
      rect(0,0,width,height);
      
      fill(#323C46);
      stroke(#56697A);
      strokeWeight(7);
      rect(520,200,400,400,4);
        
      fill(#C6E9FF);
      textSize(25);
      text("Miss:",580,295);
      text(Miss,825,295);
      text("Time:",580,345);
      pushMatrix();
        translate(684,-534);
        text(TimeMinute1,105,882);
        text(TimeMinute2,120,882);
        text(":",135,880);
        text(TimeSecond1,143,882);
        text(TimeSecond2,158,882);
      popMatrix(); 
      text("Bricks Broke:",580,395);
      if (MapSelection==1){
        text(Count1,810,395);
      }
      else if (MapSelection==2){
        text(Count2,810,395);
      }
      
      noStroke();
      fill(#0A2139,Retry);
      rect(580,515,137,60,3);
      fill(#0A2139,Exit);
      rect(723,515,137,60,3);
      
      fill(#C6E9FF);
      textSize(30);
      textAlign(CENTER,CENTER);
      text("Retry",648,540);
      text("Exit",790,540);
      
      if (mouseX>580 && mouseX<717 && mouseY>515 && mouseY<575){
        Retry = 200;  
      }
      else {
        Retry = 0;
      }
      if (mouseX>723 && mouseX<860 && mouseY>515 && mouseY<575){
        Exit = 200;  
      }
      else {
        Exit = 0;
      }    
    }
  }
  else if (GameMode==GameMusic){
    GameMusic();
  }
  
  textAlign(CORNER,CORNER);
  fill(#00B474);
  textSize(18);
  text("fps:",10,23);
  text(frameRate,40,24);
  

  //println(PaddleRadiusNumberChosing);
  //println(PaddleRadiusNumber);
  //println(PaddleSpeedBackUp);
  //println(BallSettingvX);
  //println(PickSongNumber);
  //println(FadeAwayPlayLineX);
  //println(CrabRavePlayLineX);
  //println(CaffeineRushPlayLineX);
  //println(JoyPlayLineX);
  //println(RenegadePlayLineX);
  //println(MapSelection);
  //println(BallNumebrs);
  //println(PaddleRadius);
  //println(Map2Finished);


}
//=====================================================================================================================
void QuitGame(){
  fill(44);
  stroke(160);
  strokeWeight(2);
  rect(470,270,500,250);// Exit Light Base
  fill(37);
  noStroke();
  rect(472,272,496,76);// Exit Top Dark Rect
    
  fill(151);
  textSize(24);
  text("Confirm Exit",500,324);
  fill(204);
  textSize(17);
  text("Are you sure you want to quit?",500,390);
    
  fill(39);
  if (QuitButtonShow){
    rect(755,470,100,40);// Quit Box
  }
  if (ReturnButtonShow){
    rect(860,470,100,40);// Return Box
  }
    
  fill(255);
  text("QUIT",785,496);
  text("RETURN",878,496);
  
  if (mouseX > 755 && mouseX < 855 && mouseY > 470 && mouseY < 510){
    QuitButtonShow = true;
  }
  else {
    QuitButtonShow = false;
  }
  if (mouseX > 860 && mouseX < 960 && mouseY > 470 && mouseY <= 510){      
    ReturnButtonShow = true;
  }
  else {
    ReturnButtonShow = false;
  }
}
