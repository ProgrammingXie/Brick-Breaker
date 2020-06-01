void Game(){
  background(0);
  tint(170);
  imageMode(CORNER);
  image(GameBackground,0,-200);
  
  BallAction();
  
  float PaddleRadius = PaddleRadiusNumber;
  float PaddleRadiusSecond = PaddleRadius;
  while(PaddleRadius > 0){// Paddle
    fill(0,PaddleColour,255);
    noStroke();
    ellipse(PaddleX,PaddleY,PaddleRadius,PaddleRadius);    
      
    PaddleColour = map(PaddleRadius,PaddleRadiusSecond,0,0,255);
    PaddleRadius = PaddleRadius - 4; 
  }


  fill(#7C1F1F);
  textSize(30);
  text("Miss:",12,825);
  text(Miss,90,827);
  
  fill(255);
  text("Bricks:",12,888);
  if (MapSelection==1){
    text(Count1,110,890);
  }
  else if (MapSelection==2){
    text(Count2,110,890);
  }
  
  Timer();


  if (InGameSetting==0 && !GameEnds){
    if (PaddleMoveLeft){
      PaddleX = PaddleX - PaddleSpeed;
      if (PaddleX<=0){
        PaddleX = 0;
      }
    }
    if (PaddleMoveRight){
      PaddleX = PaddleX + PaddleSpeed;
      if (PaddleX>=1440){
        PaddleX = 1440;
      }
    }
  }

  if (InGameSetting==0 && !GameEnds){    
    if (PickSongNumber==1){
      FadeAway.play();
      if (!FadeAway.isPlaying()){
        FadeAway.rewind();
        FadeAway.play();
      }
    }
    else if (PickSongNumber==2){
      CrabRave.play();
      if (!CrabRave.isPlaying()){
        CrabRave.rewind();
        CrabRave.play();
      }
    }
    else if (PickSongNumber==3){
      CaffeineRush.play();
      if (!CaffeineRush.isPlaying()){
        CaffeineRush.rewind();
        CaffeineRush.play();
      }
    }
    else if (PickSongNumber==4){
      Joy.play();
      if (!Joy.isPlaying()){
        Joy.rewind();
        Joy.play();
      }
    }
    else if (PickSongNumber==5){
      Renegade.play();
      if (!Renegade.isPlaying()){
        Renegade.rewind();
        Renegade.play();
      }
    }
    else if (PickSongNumber==6){
      Rise.play();
      if (!Rise.isPlaying()){
        Rise.rewind();
        Rise.play();
      }
    }
  }
  else if (InGameSetting==1){    
    if (FadeAway.isPlaying()){
      FadeAway.pause();
    }
    else if(CrabRave.isPlaying()){
      CrabRave.pause();
    }
    else if(CaffeineRush.isPlaying()){
      CaffeineRush.pause();
    }
    else if(Joy.isPlaying()){
      Joy.pause();
    }
    else if(Renegade.isPlaying()){
      Renegade.pause();
    }
    else if(Rise.isPlaying()){
      Rise.pause();
    }  
  }
  
  
  
  
}
//==================================================================================================================================================

void GameClick(){
  if (InGameSetting==1 && GameSideBarX==1305 && Quit==0 && !GameEnds){
    if (dist(1367,840,mouseX,mouseY) < 30){ 
      Quit = 1;
    }
    if (dist(1367,66,mouseX,mouseY) < 30){
      Quit = 0;
      GameOptions();
    }
  }
  
  if (Quit==1){
    if (mouseX > 755 && mouseX < 855 && mouseY > 470 && mouseY < 510){
      GameMode = GameMenu;
      GameOptions();
      Miss = 0;
      TimeSecond2 = 0;
      TimeSecond1 = 0;
      TimeMinute1 = 0;
      TimeMinute2 = 0;
      PaddleX = 720;
      BallX = 720;
      BallvX = 0;
      BallvY = 5;
      Quit = 0;
      gridXGame = 100;
      gridYGame = 70;
      griXGameMove = 20;
      Count1 = 0;
      Count2 = 0;
      GameEnds = false;
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
    }
    else if (mouseX > 860 && mouseX < 960 && mouseY > 470 && mouseY <= 510){
      Quit = 0;
    }
  }
  
  if (mouseX>723 && mouseX<860 && mouseY>515 && mouseY<575 && Count1== 272 || Count2==252){// exit
    GameMode = GameMenu;
    GameOptions();
    Miss = 0;
    TimeSecond2 = 0;
    TimeSecond1 = 0;
    TimeMinute1 = 0;
    TimeMinute2 = 0;
    PaddleX = 720;
    BallX = 720;
    BallY = 760;
    BallvX = 0;
    BallvY = 5;
    Quit = 0;
    gridXGame = 100;
    gridYGame = 70;
    griXGameMove = 20;
    Count1 = 0;
    Count2 = 0;
    GameEnds = false;
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
  }
  else if (mouseX>580 && mouseX<717 && mouseY>515 && mouseY<575 && Count1== 272 || Count2==252){// retry
    Miss = 0;
    TimeSecond2 = 0;
    TimeSecond1 = 0;
    TimeMinute1 = 0;
    TimeMinute2 = 0;
    PaddleX = 720;
    BallX = 720;
    BallY = 760;
    BallvX = 0;
    BallvY = 5;
    gridXGame = 100;
    gridYGame = 70;
    griXGameMove = 20;
    Count1 = 0;
    Count2 = 0;
    GameEnds = false;
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
  }

}
//==================================================================================================================================================

void BallAction(){
  fill(50);
  stroke(BallStroke);
  strokeWeight(3);
  ellipse(BallX,BallY,BallRadius,BallRadius);// ball
  
  if (InGameSetting==0 && !GameEnds){
    BallX = BallX + BallvX;
    BallY = BallY + BallvY;
    
    if (BallX<=17 || BallX>=1423){
      BallvX = BallvX * -1;
    }
    if (BallY<=17 || BallY>=883){
      BallvY = BallvY * -1;
    }
    
    if (BallY>=883){
      Miss = Miss + 1;
    }
    
    if (dist(PaddleX,PaddleY,BallX,BallY) <= PaddleRadius/2 + BallRadius/2){
      BallvX = (BallX - PaddleX)/8;
      BallvY = (BallY - PaddleY)/8;
    }
    
    if (BallX<0 || BallX>1440 || BallY<0 || BallY>900){// Saftey
      BallX = 720;
      BallY = 760;
      BallvX = 0;
      BallvY = -8;
    }
  }
  
}
//==================================================================================================================================================

void GameOptions(){
  if (GamePause==false && InGameSetting==0 && !GameEnds){
    GamePause = true;
    InGameSetting = 1;
  }
  else if (GamePause==true && InGameSetting==1 && !GameEnds){
    GamePause = false;
    InGameSetting = 0;
  }
}
