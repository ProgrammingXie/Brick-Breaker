void GameSetting(){
  background(0);
  imageMode(CENTER);
  tint(140);
  image(MenuSetting,788,height/2);
  
  fill(#001226);// return setting button
  stroke(ReturnMenu);
  strokeWeight(4);
  ellipse(82,820,100,100);
  
  fill(ReturnMenu);
  noStroke();
  rect(69,810,47,20);
  triangle(45,820, 72,792, 72,848);
  
  noFill();
  stroke(#BBBF5C);
  rect(90,90,270,110,3);
  rect(90,240,270,110,3);
  rect(90,390,270,110,3);
  rect(90,540,270,110,3);
    
  noStroke();
  fill(0,119,137,SpeedButton);
  rect(100,100,250,90,3);
  fill(0,119,137,PaddleSizeButton);
  rect(100,250,250,90,3);
  fill(0,119,137,BallSpeedButton);
  rect(100,400,250,90,3);
  fill(0,119,137,BallSizeButton);
  rect(100,550,250,90,3);
  
  textSize(27);
  textAlign(CENTER,CENTER);
  
  fill(#FFFDC6,SpeedButtonWord);
  text("Paddle Speed",225,145);
  
  fill(#FFFDC6,PaddleSizeButtonWord);
  text("Paddle Size",225,295);
  
  fill(#FFFDC6,BallSpeedButtonWord);
  text("Ball Speed",225,445);

  fill(#FFFDC6,BallSizeButtonWord);
  text("Ball Size",225,595);
  
  fill(#001B2C);
  stroke(#BBBF5C);
  if (SettingOptions==1){
    beginShape();
    vertex(390,132);
    vertex(374,145);
    vertex(390,158);
    vertex(390,870);
    vertex(1410,870);
    vertex(1410,30);
    vertex(390,30);
    endShape(CLOSE);   
  }
  else if (SettingOptions==2){
    beginShape();
    vertex(390,282);
    vertex(374,295);
    vertex(390,308);
    vertex(390,870);
    vertex(1410,870);
    vertex(1410,30);
    vertex(390,30);
    endShape(CLOSE);
  }
  else if (SettingOptions==3){
    beginShape();
    vertex(390,432);
    vertex(374,445);
    vertex(390,458);
    vertex(390,870);
    vertex(1410,870);
    vertex(1410,30);
    vertex(390,30);
    endShape(CLOSE);
  }
  else if (SettingOptions==4){
    beginShape();
    vertex(390,582);
    vertex(374,595);
    vertex(390,608);
    vertex(390,870);
    vertex(1410,870);
    vertex(1410,30);
    vertex(390,30);
    endShape(CLOSE);
  }
  
  
  
  
  if (SettingOptions==1){// SettingOptions 1, Paddle Speed
    Setting1();   
  }
  else if (SettingOptions==2){// SettingOptions 2, Paddle Size
    Setting2();    
  }
  else if (SettingOptions==3){// SettingOption3, Ball Speed
    Setting3();  
  }
  else if (SettingOptions==4){

  }
  

  if (SettingOptions!=0){
    fill(Confirm);
    stroke(#34615A);
    strokeWeight(2);
    rect(1180,785,200,55);
        
    fill(#8FCB9A);
    textSize(25);
    textAlign(CENTER,CENTER);
    text("Confirm",1280,811);
    
    fill(DefaultSetting);
    stroke(#5F4305);
    strokeWeight(2);
    rect(420,785,200,55);
        
    fill(#C4A665);
    textSize(24);
    textAlign(CENTER,CENTER);
    text("Default Setting",520,811);

    if (mouseX>1180 && mouseX<1380 && mouseY>785 && mouseY<840){
      Confirm = #119B72;
    }
    else {
      Confirm = #29715C;
    }
    
     if (mouseX>420 && mouseX<620 && mouseY>785 && mouseY<840){
      DefaultSetting = #A2771A;
    }
    else {
      DefaultSetting = #836729;
    }
  }
  
  
  

  if (dist(mouseX,mouseY,82,820) < 50){
    ReturnMenu = #8BC6D9;
  }
  else {
    ReturnMenu = #4B8295;
  }
  
  if (mouseX>90 && mouseX<360 && mouseY>90 && mouseY<200){// Paddle Speed
    SpeedButton = 220;
    SpeedButtonWord = 250;
  }
  else {
    SpeedButton = 200;
    SpeedButtonWord = 140;
  }
  
  if (mouseX>90 && mouseX<360 && mouseY>240 && mouseY<350){// Paddle Size
    PaddleSizeButton = 220;
    PaddleSizeButtonWord = 250;
  }
  else {
    PaddleSizeButton = 200;
    PaddleSizeButtonWord = 140;
  }
  
  if (mouseX>90 && mouseX<360 && mouseY>390 && mouseY<500){// Ball Speed
    BallSpeedButton = 220;
    BallSpeedButtonWord = 250;
    stroke(255,0,0);
    strokeWeight(3);
    line(90,390, 360,500);
    line(90,500, 360,390);
  }
  else {
    BallSpeedButton = 200;
    BallSpeedButtonWord = 140;
  }
  
  if (mouseX>90 && mouseX<360 && mouseY>540 && mouseY<650){// Ball Size
    BallSizeButton = 220;
    BallSizeButtonWord = 250;
    stroke(255,0,0);
    strokeWeight(3);
    line(90,540, 360,650);
    line(90,650, 360,540);
  }
  else {
    BallSizeButton = 200;
    BallSizeButtonWord = 140;
  }

  
  
  






}
//=====================================================================================================================================================

void GameSettingClick(){
  if (dist(mouseX,mouseY,82,820) < 50){
    GameMode = GameMenu;
  }
  
  if (mouseX>90 && mouseX<360 && mouseY>90 && mouseY<200){// Click Secton 1 and not on Section 1, value wasnt saved
    if (SettingOptions!=1){
      PaddleXSetting = 503;
      if (PaddleSpeedBackUp==5){
        PaddleSpeed1Pick = 1;
        PaddleSpeed2Pick = 0;
        PaddleSpeed3Pick = 0;
        PaddleSpeed4Pick = 0;
        PaddleSpeed5Pick = 0;
        PaddleSpeed6Pick = 0;
        PaddleSpeed = PaddleSpeedBackUp;
      }
      else if (PaddleSpeedBackUp==7){
        PaddleSpeed1Pick = 0;
        PaddleSpeed2Pick = 1;
        PaddleSpeed3Pick = 0;
        PaddleSpeed4Pick = 0;
        PaddleSpeed5Pick = 0;
        PaddleSpeed6Pick = 0;
        PaddleSpeed = PaddleSpeedBackUp;
      }
      else if (PaddleSpeedBackUp==9){
        PaddleSpeed1Pick = 0;
        PaddleSpeed2Pick = 0;
        PaddleSpeed3Pick = 1;
        PaddleSpeed4Pick = 0;
        PaddleSpeed5Pick = 0;
        PaddleSpeed6Pick = 0;
        PaddleSpeed = PaddleSpeedBackUp;
      }
      else if (PaddleSpeedBackUp==12){
        PaddleSpeed1Pick = 0;
        PaddleSpeed2Pick = 0;
        PaddleSpeed3Pick = 0;
        PaddleSpeed4Pick = 1;
        PaddleSpeed5Pick = 0;
        PaddleSpeed6Pick = 0;
        PaddleSpeed = PaddleSpeedBackUp;
      }
      else if (PaddleSpeedBackUp==15){
        PaddleSpeed1Pick = 0;
        PaddleSpeed2Pick = 0;
        PaddleSpeed3Pick = 0;
        PaddleSpeed4Pick = 0;
        PaddleSpeed5Pick = 1;
        PaddleSpeed6Pick = 0;
        PaddleSpeed = PaddleSpeedBackUp;
      }
      else if (PaddleSpeedBackUp==19){
        PaddleSpeed1Pick = 0;
        PaddleSpeed2Pick = 0;
        PaddleSpeed3Pick = 0;
        PaddleSpeed4Pick = 0;
        PaddleSpeed5Pick = 0;
        PaddleSpeed6Pick = 1;
        PaddleSpeed = PaddleSpeedBackUp;
      }
    }
    SettingOptions = 1;
  }
  else if (mouseX>90 && mouseX<360 && mouseY>240 && mouseY<350){
    PaddleSizeY = PaddleSizeYBackUp;
    SettingOptions = 2;
  }
  else if (mouseX>90 && mouseX<360 && mouseY>390 && mouseY<500){
    BallSettingX = 674;
    BallSettingY = 227;
    BallSettingvX = 5;
    BallSettingvY = 5;
    SettingOptions = 3;  
  }
  else if (mouseX>90 && mouseX<360 && mouseY>540 && mouseY<650){
    SettingOptions = 4;
  }
  
  
  if (mouseX>420 && mouseX<620 && mouseY>785 && mouseY<840){// Reset Default
    if (SettingOptions==1){
      PaddleSpeed1Pick = 0;
      PaddleSpeed2Pick = 0;
      PaddleSpeed3Pick = 0;
      PaddleSpeed4Pick = 1;
      PaddleSpeed5Pick = 0;
      PaddleSpeed6Pick = 0;
      PaddleSpeed = 12;
      PaddleSpeedBackUp = PaddleSpeed;
    }
    else if (SettingOptions==2){
      PaddleSizeY = 310;
      PaddleRadiusNumberChosing = 150;
      PaddleSizeYBackUp = PaddleSizeY;
      PaddleRadiusNumber = PaddleRadiusNumberChosing;
    }
    else if (SettingOptions==3){
      //BallSpeed1Pick = 0;
      //BallSpeed2Pick = 0;
      //BallSpeed3Pick = 1;
      //BallSpeed4Pick = 0;
      //BallSpeed5Pick = 0;
      //BallSpeed6Pick = 0;
    }
    else if (SettingOptions==4){
      
    }
  }
  
  
  if (SettingOptions==1){
    if (mouseX>475 && mouseX<475+90 && mouseY>400 && mouseY<490){// speed level 1
      PaddleSpeed1Pick = 1;
      PaddleSpeed2Pick = 0;
      PaddleSpeed3Pick = 0;
      PaddleSpeed4Pick = 0;
      PaddleSpeed5Pick = 0;
      PaddleSpeed6Pick = 0;
      PaddleSpeed = 5;
    }    
    if (mouseX>475+155 && mouseX<475+155+90 && mouseY>400 && mouseY<490){// speed level 2
      PaddleSpeed1Pick = 0;
      PaddleSpeed2Pick = 1;
      PaddleSpeed3Pick = 0;
      PaddleSpeed4Pick = 0;
      PaddleSpeed5Pick = 0;
      PaddleSpeed6Pick = 0;
      PaddleSpeed = 7;
    } 
    if (mouseX>475+155*2 && mouseX<475+155*2+90 && mouseY>400 && mouseY<490){// speed level 3
      PaddleSpeed1Pick = 0;
      PaddleSpeed2Pick = 0;
      PaddleSpeed3Pick = 1;
      PaddleSpeed4Pick = 0;
      PaddleSpeed5Pick = 0;
      PaddleSpeed6Pick = 0;
      PaddleSpeed = 9;
    }
    if (mouseX>475+155*3 && mouseX<475+155*3+90 && mouseY>400 && mouseY<490){// speed level 4
      PaddleSpeed1Pick = 0;
      PaddleSpeed2Pick = 0;
      PaddleSpeed3Pick = 0;
      PaddleSpeed4Pick = 1;
      PaddleSpeed5Pick = 0;
      PaddleSpeed6Pick = 0;
      PaddleSpeed = 12;
    }   
    if (mouseX>475+155*4 && mouseX<475+155*4+90 && mouseY>400 && mouseY<490){// speed level 5
      PaddleSpeed1Pick = 0;
      PaddleSpeed2Pick = 0;
      PaddleSpeed3Pick = 0;
      PaddleSpeed4Pick = 0;
      PaddleSpeed5Pick = 1;
      PaddleSpeed6Pick = 0;
      PaddleSpeed = 15;
    }  
    if (mouseX>475+155*5 && mouseX<475+155*5+90 && mouseY>400 && mouseY<490){// speed level 6
      PaddleSpeed1Pick = 0;
      PaddleSpeed2Pick = 0;
      PaddleSpeed3Pick = 0;
      PaddleSpeed4Pick = 0;
      PaddleSpeed5Pick = 0;
      PaddleSpeed6Pick = 1; 
      PaddleSpeed = 19;
    }
  }
  else if (SettingOptions==3){
    //if (mouseX>475 && mouseX<475+90 && mouseY>550 && mouseY<640){// ball speed level 1
    //  BallSpeed1Pick = 1;
    //  BallSpeed2Pick = 0;
    //  BallSpeed3Pick = 0;
    //  BallSpeed4Pick = 0;
    //  BallSpeed5Pick = 0;
    //  BallSpeed6Pick = 0;
    //}    
    //if (mouseX>475+155 && mouseX<475+155+90 && mouseY>550 && mouseY<640){// ball speed level 2
    //  BallSpeed1Pick = 0;
    //  BallSpeed2Pick = 1;
    //  BallSpeed3Pick = 0;
    //  BallSpeed4Pick = 0;
    //  BallSpeed5Pick = 0;
    //  BallSpeed6Pick = 0;
    //} 
    //if (mouseX>475+155*2 && mouseX<475+155*2+90 && mouseY>550 && mouseY<640){// ball speed level 3
    //  BallSpeed1Pick = 0;
    //  BallSpeed2Pick = 0;
    //  BallSpeed3Pick = 1;
    //  BallSpeed4Pick = 0;
    //  BallSpeed5Pick = 0;
    //  BallSpeed6Pick = 0;
    //}
    //if (mouseX>475+155*3 && mouseX<475+155*3+90 && mouseY>550 && mouseY<640){// ball speed level 4
    //  BallSpeed1Pick = 0;
    //  BallSpeed2Pick = 0;
    //  BallSpeed3Pick = 0;
    //  BallSpeed4Pick = 1;
    //  BallSpeed5Pick = 0;
    //  BallSpeed6Pick = 0;
    //  BallSettingvX = 7;
    //  BallSettingvY = 7;
    //}   
    //if (mouseX>475+155*4 && mouseX<475+155*4+90 && mouseY>550 && mouseY<640){// ball speed level 5
    //  BallSpeed1Pick = 0;
    //  BallSpeed2Pick = 0;
    //  BallSpeed3Pick = 0;
    //  BallSpeed4Pick = 0;
    //  BallSpeed5Pick = 1;
    //  BallSpeed6Pick = 0;
    //}  
    //if (mouseX>475+155*5 && mouseX<475+155*5+90 && mouseY>550 && mouseY<640){// ball speed level 6
    //  BallSpeed1Pick = 0;
    //  BallSpeed2Pick = 0;
    //  BallSpeed3Pick = 0;
    //  BallSpeed4Pick = 0;
    //  BallSpeed5Pick = 0;
    //  BallSpeed6Pick = 1;
    //}
  }
  else if (SettingOptions==4){

  }    
  
  
  if (mouseX>1180 && mouseX<1380 && mouseY>785 && mouseY<840){// Comfirm your Selection
    if (SettingOptions==1){    
      PaddleSpeedBackUp = PaddleSpeed;
    }
    else if (SettingOptions==2){
      PaddleSizeYBackUp = PaddleSizeY;
      PaddleRadiusNumber = PaddleRadiusNumberChosing;
    }
    else if (SettingOptions==3){
      
    }
    else if (SettingOptions==4){
  
    }    
  }
  

}
//=====================================================================================================================================================
void Setting1(){
    fill(160);
    noStroke();
    rect(481,110,828,175);// Base speed
    
    float PaddleRadius = PaddleRadiusNumber;
    float PaddleRadiusSecond = PaddleRadius;
    while(PaddleRadius > 0){
      fill(0,PaddleColour,255);
      noStroke();
      ellipse(PaddleXSetting,282,PaddleRadius,PaddleRadius);    
      
      PaddleColour = map(PaddleRadius,PaddleRadiusSecond,0,0,255);
      PaddleRadius = PaddleRadius - 4; 
    }
    
    stroke(#0092D8);
    strokeWeight(5);
    line(511,110, 1291,110);
    line(511,110, 511,286);
    line(511,286, 1289,286);
    line(1289,286, 1289,110);
   
    fill(#001B2C);
    noStroke();
    beginShape();// cover paddle 
    vertex(510,100);
    vertex(510,287);
    vertex(1291,287);
    vertex(1291,100);
    vertex(1408,100);
    vertex(1408,420);
    vertex(393,420);
    vertex(393,100); 
    endShape(CLOSE);
    
    fill(#072F39);
    strokeWeight(3);
    if (PaddleSpeed1Pick==0){// paddle speed pick 1
      stroke(#0092D8,PaddleSpeed1Stroke);
      rect(475,400,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475,400,90,90,3);
    }
    if (PaddleSpeed2Pick==0){// paddle speed pick 2
      stroke(#0092D8,PaddleSpeed2Stroke);
      rect(475+155,400,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155,400,90,90,3);
    }
    if (PaddleSpeed3Pick==0){// paddle speed pick 3
      stroke(#0092D8,PaddleSpeed3Stroke);
      rect(475+155*2,400,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155*2,400,90,90,3);
    }
    if (PaddleSpeed4Pick==0){// paddle speed pick 4
      stroke(#0092D8,PaddleSpeed4Stroke);
      rect(475+155*3,400,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155*3,400,90,90,3);
    }
    if (PaddleSpeed5Pick==0){// paddle speed pick 5
      stroke(#0092D8,PaddleSpeed5Stroke);
      rect(475+155*4,400,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155*4,400,90,90,3);
    }
    if (PaddleSpeed6Pick==0){// paddle speed pick 6
      stroke(#0092D8,PaddleSpeed6Stroke);
      rect(475+155*5,400,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155*5,400,90,90,3);
    }
    
    textSize(52);
    textAlign(CENTER,CENTER);
    
    if (PaddleSpeed1Pick==0){// paddle speed pick 1 word
      fill(#0092D8,PaddleSpeed1Stroke);
      text("1",521,441);
    }
    else {
      fill(#BBBF5C);
      text("1",521,441);
    }    
    if (PaddleSpeed2Pick==0){// paddle speed pick 2 word
      fill(#0092D8,PaddleSpeed2Stroke);
      text("2",521+155,441);
    }
    else {
      fill(#BBBF5C);
      text("2",521+155,441);
    }
    if (PaddleSpeed3Pick==0){// paddle speed pick 3 word
      fill(#0092D8,PaddleSpeed3Stroke);
      text("3",521+155*2,441);
    }
    else {
      fill(#BBBF5C);
      text("3",521+155*2,441);
    }
    if (PaddleSpeed4Pick==0){// paddle speed pick 4 word
      fill(#0092D8,PaddleSpeed4Stroke);
      text("4",521+155*3,441);
    }
    else {
      fill(#BBBF5C);
      text("4",521+155*3,441);
    }
    if (PaddleSpeed5Pick==0){// paddle speed pick 5 word
      fill(#0092D8,PaddleSpeed5Stroke);
      text("5",521+155*4,441);
    }
    else {
      fill(#BBBF5C);
      text("5",521+155*4,441);
    }
    if (PaddleSpeed6Pick==0){// paddle speed pick 6 word
      fill(#0092D8,PaddleSpeed6Stroke);
      text("6",521+155*5,441);
    }
    else {
      fill(#BBBF5C);
      text("6",521+155*5,441);
    }    
    
    if (PaddleSpeed1Pick==0){// speed level 1
      if (mouseX>475 && mouseX<475+90 && mouseY>400 && mouseY<490){
        PaddleSpeed1Stroke = 250;
      }
      else {
        PaddleSpeed1Stroke = 90;
      }
    }
    else {}
    
    if (PaddleSpeed2Pick==0){// speed level 2
      if (mouseX>475+155 && mouseX<475+155+90 && mouseY>400 && mouseY<490){
        PaddleSpeed2Stroke = 220;
      }
      else {
        PaddleSpeed2Stroke = 90;
      }
    }
    else {}
    
    if (PaddleSpeed3Pick==0){// speed level 3
      if (mouseX>475+155*2 && mouseX<475+155*2+90 && mouseY>400 && mouseY<490){
        PaddleSpeed3Stroke = 220;
      }
      else {
        PaddleSpeed3Stroke = 90;
      }
    }
    else {}
    
    if (PaddleSpeed4Pick==0){// speed level 4
      if (mouseX>475+155*3 && mouseX<475+155*3+90 && mouseY>400 && mouseY<490){
        PaddleSpeed4Stroke = 220;
      }
      else {
        PaddleSpeed4Stroke = 90;
      }
    }
    else {}
    
    if (PaddleSpeed5Pick==0){// speed level 5
      if (mouseX>475+155*4 && mouseX<475+155*4+90 && mouseY>400 && mouseY<490){
        PaddleSpeed5Stroke = 220;
      }
      else {
        PaddleSpeed5Stroke = 90;
      }
    }
    else {}
    
    if (PaddleSpeed6Pick==0){// speed level 6
      if (mouseX>475+155*5 && mouseX<475+155*5+90 && mouseY>400 && mouseY<490){
        PaddleSpeed6Stroke = 220;
      }
      else {
        PaddleSpeed6Stroke = 90;
      }
    }
    else {}
    
           
    if (PaddleSpeedReverse==0){// automatic replaying speed animation
      PaddleXSetting = PaddleXSetting + PaddleSpeed;
    }
    else if (PaddleSpeedReverse==1){
      PaddleXSetting = PaddleXSetting - PaddleSpeed;
    }
    
    if (PaddleXSetting>=1288){
      PaddleSpeedReverse = 1;
    }
    else if (PaddleXSetting<=510){
       PaddleSpeedReverse = 0;
    }
}
//=====================================================================================================================================================
void Setting2(){
    fill(160);
    noStroke();
    rect(481,110,500,160);

    float PaddleRadius = PaddleRadiusNumberChosing;
    float PaddleRadiusSecond = PaddleRadius;
    while(PaddleRadius > 0){
      fill(0,PaddleColour,255);
      noStroke();
      ellipse(731,270,PaddleRadius,PaddleRadius);    
      
      PaddleColour = map(PaddleRadius,PaddleRadiusSecond,0,0,255);
      PaddleRadius = PaddleRadius - 4; 
    }
    
    fill(#001B2C);
    noStroke();
    beginShape();
    vertex(481,110);
    vertex(481,270);
    vertex(981,270);
    vertex(981,110);
    vertex(991,110);
    vertex(991,400);
    vertex(471,400);
    vertex(471,110);
    endShape(CLOSE);
   
    stroke(200);
    strokeWeight(6);
    line(480,109,480,271);
    line(480,271,982,271);
    line(982,271,982,109);
    line(982,109,480,109);
    
    stroke(#0092D8);
    strokeWeight(5);
    line(481,110,481,270);
    line(481,270,981,270);
    line(981,270,981,110);
    line(981,110,481,110);
    
    fill(#25869D);
    stroke(200);
    strokeWeight(1);
    rect(1100,110,170,410,5);// middle inside bottom panel
    fill(#3D4545);
    stroke(15);
    strokeWeight(3);
    rect(1110,120,150,390,5);
    
    fill(#DED636);
    noStroke();
    triangle(1232,160, 1232,180, 1244,170);// top triangle
    triangle(1136,160, 1136,180, 1126,170);
    triangle(1232,300, 1232,320, 1244,310);// middle triangle
    triangle(1136,300, 1136,320, 1126,310);
    triangle(1232,440, 1232,460, 1244,450);// bottom triangle
    triangle(1136,440, 1136,460, 1126,450);
         
    stroke(15);
    line(1185,170,1185,450);
    
    fill(#C6BD58);
    stroke(PaddleSizeYStroke);
    ellipse(1185,PaddleSizeY,40,40);
    
    if (mousePressed){
      if (dist(mouseX,mouseY,1185,PaddleSizeY) < 55){
        PaddleSizeY = mouseY;
        PaddleSizeYStroke = 200;
        if (mouseY<=170){
          PaddleSizeY = 170;
        }
        else if (mouseY>=450){
          PaddleSizeY = 450;
        }
      }
    }
    else {
      PaddleSizeYStroke = 0;
    }    
    PaddleRadiusNumberChosing = map(PaddleSizeY,450,170,90,210);
}
//=====================================================================================================================================================
void Setting3(){
    noFill();
    stroke(200);
    strokeWeight(5);
    rect(447,77,906,406,2);// white stroke outline
  
    fill(160);
    stroke(#0092D8);
    strokeWeight(6);
    rect(450,80,900,400,2);// base 
    
    fill(100);
    stroke(0);
    strokeWeight(2);
    ellipse(BallSettingX,BallSettingY,BallRadius,BallRadius);// ball
    BallControl();
    
    float PaddleRadius = PaddleRadiusNumber;
    float PaddleRadiusSecond = PaddleRadius;
    while(PaddleRadius > 0){// Paddle
      fill(0,PaddleColour,255);
      noStroke();
      ellipse(900,480,PaddleRadius,PaddleRadius);    
      
      PaddleColour = map(PaddleRadius,PaddleRadiusSecond,0,0,255);
      PaddleRadius = PaddleRadius - 4; 
    }
      
    fill(#001B2C);
    noStroke();
    rect(750,481,300,200);
    noFill();
    stroke(#0092D8);
    strokeWeight(6);
    line(500,480,1300,480);
    noFill();
    stroke(200);
    strokeWeight(2.5);
    line(500,484.9,1300,484.9);
    line(500,484.9,1300,484.9);
        
    fill(#072F39);
    strokeWeight(3);
    if (BallSpeed1Pick==0){// ball speed pick 1
      stroke(#0092D8,BallSpeed1Stroke);
      rect(475,550,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475,550,90,90,3);
    }
    if (BallSpeed2Pick==0){// ball speed pick 2
      stroke(#0092D8,BallSpeed2Stroke);
      rect(475+155,550,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155,550,90,90,3);
    }
    if (BallSpeed3Pick==0){// ball speed pick 3
      stroke(#0092D8,BallSpeed3Stroke);
      rect(475+155*2,550,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155*2,550,90,90,3);
    }
    if (BallSpeed4Pick==0){// ball speed pick 4
      stroke(#0092D8,BallSpeed4Stroke);
      rect(475+155*3,550,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155*3,550,90,90,3);
    }
    if (BallSpeed5Pick==0){// ball speed pick 5
      stroke(#0092D8,BallSpeed5Stroke);
      rect(475+155*4,550,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155*4,550,90,90,3);
    }
    if (BallSpeed6Pick==0){// ball speed pick 6
      stroke(#0092D8,BallSpeed6Stroke);
      rect(475+155*5,550,90,90,3);
    }
    else {
      stroke(#BBBF5C);
      rect(475+155*5,550,90,90,3);
    }
    
    textSize(52);
    textAlign(CENTER,CENTER);
    
    if (BallSpeed1Pick==0){// ball speed pick 1 word
      fill(#0092D8,BallSpeed1Stroke);
      text("1",521,591);
    }
    else {
      fill(#BBBF5C);
      text("1",521,591);
    }    
    if (BallSpeed2Pick==0){// ball speed pick 2 word
      fill(#0092D8,BallSpeed2Stroke);
      text("2",521+155,591);
    }
    else {
      fill(#BBBF5C);
      text("2",521+155,591);
    }
    if (BallSpeed3Pick==0){// ball speed pick 3 word
      fill(#0092D8,BallSpeed3Stroke);
      text("3",521+155*2,591);
    }
    else {
      fill(#BBBF5C);
      text("3",521+155*2,591);
    }
    if (BallSpeed4Pick==0){// ball speed pick 4 word
      fill(#0092D8,BallSpeed4Stroke);
      text("4",521+155*3,591);
    }
    else {
      fill(#BBBF5C);
      text("4",521+155*3,591);
    }
    if (BallSpeed5Pick==0){// ball speed pick 5 word
      fill(#0092D8,BallSpeed5Stroke);
      text("5",521+155*4,591);
    }
    else {
      fill(#BBBF5C);
      text("5",521+155*4,591);
    }
    if (BallSpeed6Pick==0){// ball speed pick 6 word
      fill(#0092D8,BallSpeed6Stroke);
      text("6",521+155*5,591);
    }
    else {
      fill(#BBBF5C);
      text("6",521+155*5,591);
    }    
    
    
    if (BallSpeed1Pick==0){// ball speed level 1
      if (mouseX>475 && mouseX<475+90 && mouseY>550 && mouseY<650){
        BallSpeed1Stroke = 250;
      }
      else {
        BallSpeed1Stroke = 90;
      }
    }
    else {}
    
    if (BallSpeed2Pick==0){// ball speed level 2
      if (mouseX>475+155 && mouseX<475+155+90 && mouseY>550 && mouseY<650){
        BallSpeed2Stroke = 220;
      }
      else {
        BallSpeed2Stroke = 90;
      }
    }
    else {}
    
    if (BallSpeed3Pick==0){// ball speed level 3
      if (mouseX>475+155*2 && mouseX<475+155*2+90 && mouseY>550 && mouseY<650){
        BallSpeed3Stroke = 220;
      }
      else {
        BallSpeed3Stroke = 90;
      }
    }
    else {}
    
    if (BallSpeed4Pick==0){// ball speed level 4
      if (mouseX>475+155*3 && mouseX<475+155*3+90 && mouseY>550 && mouseY<650){
        BallSpeed4Stroke = 220;
      }
      else {
        BallSpeed4Stroke = 90;
      }
    }
    else {}
    
    if (BallSpeed5Pick==0){// ballspeed level 5
      if (mouseX>475+155*4 && mouseX<475+155*4+90 && mouseY>550 && mouseY<650){
        BallSpeed5Stroke = 220;
      }
      else {
        BallSpeed5Stroke = 90;
      }
    }
    else {}
    
    if (BallSpeed6Pick==0){// ball speed level 6
      if (mouseX>475+155*5 && mouseX<475+155*5+90 && mouseY>550 && mouseY<650){
        BallSpeed6Stroke = 220;
      }
      else {
        BallSpeed6Stroke = 90;
      }
    }
    else {}
}
//=====================================================================================================================================================
void Setting4(){

}
//=====================================================================================================================================================
void BallControl(){

  BallSettingX = BallSettingX + BallSettingvX;
  BallSettingY = BallSettingY + BallSettingvY;
  
  
  if (BallSettingX<=450+BallRadius/2 || BallSettingX>=1350-BallRadius/2){
    BallSettingvX = BallSettingvX*-1;
  }
  if (BallSettingY<=80+BallRadius/2 || BallSettingY>=480-BallRadius/2){
    BallSettingvY = BallSettingvY*-1;
  }
  
  if (dist(900,480,BallSettingX,BallSettingY) <= PaddleRadiusNumber/2+BallRadius/2){
    BallSettingvX = (BallSettingX-900)/9;
    BallSettingvY = (BallSettingY-480)/9;
  }
  
}
