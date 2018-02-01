// Inputs

void mousePressed() {
  sliderDoor.mousePressed();
  sliderFrontHeck.mousePressed();
  toggleButtonFoxtail.mousePressed();
  toggleButtonFlux.mousePressed();
 
  
  int lastRimSelection = tabButtonRims.activeTab;
  tabButtonRims.mousePressed();
    if (lastRimSelection != tabButtonRims.activeTab) {
      if (tabButtonRims.activeTab == 0) {
      } else if (tabButtonRims.activeTab == 1) {     
      } else if (tabButtonRims.activeTab == 2) {
      } else if (tabButtonDecals.activeTab == 3) {
    } 
  }
  
  int lastDecalSelection = tabButtonDecals.activeTab;
  tabButtonDecals.mousePressed();
    if (lastDecalSelection != tabButtonDecals.activeTab) {
      if (tabButtonDecals.activeTab == 0) {
       } else if (tabButtonDecals.activeTab == 1) {
       } else if (tabButtonDecals.activeTab == 2) {
       } else if (tabButtonDecals.activeTab == 3) {
        }
  }
}

void mouseDragged() {
  sliderDoor.mouseDragged();
  sliderFrontHeck.mouseDragged(); 
}

void mouseReleased() {
  sliderDoor.mouseReleased();
  sliderFrontHeck.mouseReleased();
}

boolean insideRect(int xPos, int yPos, int targetXPos, int targetYPos, int targetWidth, int targetHeight) {
  if (xPos > targetXPos && xPos < targetXPos + targetWidth && yPos > targetYPos && yPos < targetYPos + targetHeight) {
    return true;
  }
  return false;
}