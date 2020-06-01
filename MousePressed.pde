void mousePressed(){

  if (GameMode==GameLoadingAnimation){
    GameLoadingAnimationClick();
  }
  else if (GameMode==GameMenu){
    GameMenuClick();
  }
  else if (GameMode==GameSetting){
    GameSettingClick();
  }
  else if (GameMode==GameChoose){
    GameChooseClick();
  }
  else if (GameMode==GameMusic){
    GameMusicClick();
  }
  else if (GameMode==Game){
    GameClick();
  }







}
