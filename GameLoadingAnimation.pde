void GameLoadingAnimation(){
  background(#EADA89);
  
  fill(#5B8AA8);
  stroke(0);
  strokeWeight(3);
  rect(-5,730,1450,200);// floor
 
  pushMatrix();
  translate(OfficePlantsMove*-1,0);
  image(OfficePlantLeft,150,630,170,120);// office left plant
  
  fill(#C4AD63);
  strokeWeight(2);
  rect(40,138,300,100,5); // floor 11 sign
  fill(50);
  textSize(40);
  text("11th Floor",85,205);// floor 11 word
  popMatrix();
  
  pushMatrix();
  translate(OfficePlantsMove,0);
  OfficePlant();// office right plant
  popMatrix();
  
  fill(0);
  noStroke();
  rect(620-MachineY*2,400-MachineY*2,200+MachineY*4,200+MachineY*4);// game machine screen
  
  fill(#151B1A);
  stroke(100);
  
  rect(820+MachineY*2,395-MachineY*2,20+MachineY,420+MachineY*4);// right machine
  
  rect(600-MachineY*3,395-MachineY*2,20+MachineY,420+MachineY*4);// left machine
    
  fill(#1A160B);
  stroke(100);
  rect(615-MachineY*3,592+MachineY,210+MachineY*6,223+MachineY);// bottom machine
  fill(255);
  noStroke();
  rect(626-MachineY*3,605+MachineY,190+MachineY*6,202+MachineY);
  
  fill(#1A140E);
  stroke(100);
  rect(600-MachineY*3,355-MachineY*2,240+MachineY*6,100+MachineY/4);// top machine
  
  if (GameMachineStroke){
    noFill();
    stroke(255,0,0);
    strokeWeight(4);
    rect(600,355,240,460);
  }
  
  
  fill(0,0,0,BeginningBlackScreem);
  noStroke();
  rect(0,0,width,height);
  
  if (BeginText==1){
    BeginTexting();
  } 
  

  if (GameBegins==1){
    BeginningBlackScreem = BeginningBlackScreem - 2;
    if (BeginningBlackScreem<=-100){
      BeginningBlackScreem = -100;
    }   
  }
  
  
  if (OfficeMoving==1){
    GameMachineStroke = false;
    OfficePlantsMove = OfficePlantsMove + 5;
    if (OfficePlantsMove>=400){
      OfficePlantsMove = 400;
      MachineY = MachineY + 1;
      if (MachineY>=340){
        MachineY = 340;
        GameMode = GameMenu;
      }
    }
  }
  else if (OfficeMoving==0 && BeginningBlackScreem<=0){
    if (mouseX>600 && mouseX<840 && mouseY>355 && mouseY<815){
      GameMachineStroke = true;
    }
    else {
      GameMachineStroke = false;
    }
  }

}
//=====================================================================================================================================================



void OfficePlant(){
  image(OfficePlantRight,1130,350,300,300);
  image(OfficePlant,1240,350,120,300);  

  fill(#583B11);
  stroke(0);
  strokeWeight(2);
  quad(1246,641, 1326,641, 1316,745, 1256,745);
  fill(#392506);
  rect(1231,635,110,10,1);
}

 
void BeginTexting(){
    
  fill(255,255,255,TextColour);
  textSize(30);
  BeginTextNumber = BeginTextNumber + 1;
  if (BeginTextNumber>=37){
    BeginTextNumber = 37;    
    BeginningEnding = BeginningEnding + 1;
    if (BeginningEnding>=150){
      BeginningEnding = 150;
      text("- Bob",1220,680);
      TextColour = TextColour - 1;
    }
  }
  
  if (TextColour<=-100){
    TextColour = -100;
    GameBegins = 1;
  }
    
  if (BeginTextNumber==1){
    text("Y",340,220);
  }
  else if (BeginTextNumber==2){
    text("You",340,220);
  }
  else if (BeginTextNumber==3){
    text("You have",340,220);
  }
  else if (BeginTextNumber==4){
    text("You have been",340,220);
  }
  else if (BeginTextNumber==5){
    text("You have been working",340,220);
  }
  else if (BeginTextNumber==6){
    text("You have been working for",340,220);
  } 
  else if (BeginTextNumber==7){
    text("You have been working for 2",340,220);
  } 
  else if (BeginTextNumber==8){
    text("You have been working for 2 days",340,220);
  }  
  else if (BeginTextNumber==9){
    text("You have been working for 2 days straight",340,220);
  }  
  else if (BeginTextNumber==10){
    text("You have been working for 2 days straight and",340,220);
  }  
  else if (BeginTextNumber==11){
    text("You have been working for 2 days straight and you",340,220);  
  }
  else if (BeginTextNumber==12){
    text("You have been working for 2 days straight and you are",340,220);  
  }
  else if (BeginTextNumber==13){
    text("You have been working for 2 days straight and you are really",340,220);
  }
  else if (BeginTextNumber==14){
    text("You have been working for 2 days straight and you are really tired",340,220);
  }
  else if (BeginTextNumber==15){
    text("You have been working for 2 days straight and you are really tired.",340,220);
  }
  else if (BeginTextNumber==16){
    text("You have been working for 2 days straight and you are really tired.",340,220); 
    text("All",240,320);
  } 
  else if (BeginTextNumber==17){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this",240,320);
  } 
  else if (BeginTextNumber==18){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time,",240,320);
  }  
  else if (BeginTextNumber==19){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you",240,320);
  }  
  else if (BeginTextNumber==20){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been",240,320);
  }  
  else if (BeginTextNumber==21){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing",240,320);
  }
  else if (BeginTextNumber==22){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your",240,320);
  }
  else if (BeginTextNumber==23){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss",240,320);
  }
  else if (BeginTextNumber==24){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop.",240,320);
  }
  else if (BeginTextNumber==25){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now",240,320); 
  }
  else if (BeginTextNumber==26){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you",240,320);
    text("Now, you ",240,420); 
  } 
  else if (BeginTextNumber==27){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("decide",240,420); 
  } 
  else if (BeginTextNumber==28){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to",240,420); 
  }  
  else if (BeginTextNumber==29){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to take",240,420); 
  }  
  else if (BeginTextNumber==30){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to take a",240,420); 
  }  
  else if (BeginTextNumber==31){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to take a break.",240,420); 
  }
  else if (BeginTextNumber==32){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to take a break. How",240,420); 
  }
  else if (BeginTextNumber==33){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to take a break.How about",240,420); 
  }
  else if (BeginTextNumber==34){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to take a break. How about",240,420); 
  }
  else if (BeginTextNumber==35){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to take a break. How about a",240,420); 
  }
  else if (BeginTextNumber==36){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to take a break. How about a quick",240,420); 
  }
  else if (BeginTextNumber==37){
    text("You have been working for 2 days straight and you are really tired.",340,220);
    text("All this time, you have been cursing your boss non-stop. Now you decide",240,320);
    text("to take a break. How about a quick game?",240,420); 
  }
}




void  GameLoadingAnimationClick(){
  if (BeginningBlackScreem<=0){
    if (mouseX>600 && mouseX<840 && mouseY>355 && mouseY<815){
      OfficeMoving = 1;
    }
  
  }












}
