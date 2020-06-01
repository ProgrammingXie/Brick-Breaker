void keyPressed(){

  if (GameMode==GameLoadingAnimation){
    
    if (key==' '){
      BeginText = 1;
    } 
  }


  if (GameMode==Game){
    if (keyCode==RIGHT || key=='d' || key=='D'){
      PaddleMoveRight = true;
    }
    if (keyCode==LEFT || key=='a' || key=='A'){
      PaddleMoveLeft = true;
    }
  }
  
}

void keyReleased(){
  if (GameMode==Game){
    if (keyCode==RIGHT || key=='d' || key=='D'){
      PaddleMoveRight = false;
    }    
    if (keyCode==LEFT || key=='a' || key=='A'){
      PaddleMoveLeft = false; 
    }
    
    if (key=='`' || key=='~' && Quit==0 && !GameEnds){
      GameOptions();
    }
  }
}
