import processing.sound.*;
SoundFile file;

slider sliderDoor;
slider sliderFrontHeck;
tabButton tabButtonRims;
tabButton tabButtonDecals;
toggleButton toggleButtonFoxtail;
toggleButton toggleButtonFlux;

PFont myFontUI;
PImage Ebene1;  
PImage Door;
PImage FrontHeck;  
PImage Rims1985;  
PImage RimsCountach;
PImage RimsF40;  
PImage Rims1955;
PImage DecalMinion;
PImage DecalKitty;
PImage DecalFlames;
PImage AddonFlux;
PImage AddonFoxtail;


void setup() {
  size(1024, 768);
   
  sliderDoor = new slider(40, 450);
  sliderDoor.myValue = 0.5;
  sliderFrontHeck = new slider(40, 550);
  sliderFrontHeck.myValue = 0.5;
  toggleButtonFoxtail = new toggleButton(720, 450);
  toggleButtonFlux = new toggleButton(720, 550);
  

  
  String[] tabLabelsRims = {"1", "2", "3", "4"};
  tabButtonRims = new tabButton(350, 450, 4, tabLabelsRims); //Position Rimstab
  tabButtonRims.activeTab = 0;
  
  String[] tabLabelsDecals = {"  OFF ", "    1", "    2", "    3"};
  tabButtonDecals = new tabButton(350, 550, 4, tabLabelsDecals); //Position Decalstab
  tabButtonDecals.activeTab = 0;
  
  // Font + Pictures
  myFontUI = createFont("cs_regular.ttf", 24);
  Ebene1 = loadImage("Ebene1.png");  
  Door = loadImage("Door.png");  
  FrontHeck = loadImage("FrontHeck.png");  
  Rims1985 = loadImage("Rims1985.png");  
  RimsCountach = loadImage("RimsCountach.png");
  RimsF40 = loadImage("RimsF40.png");
  Rims1955 = loadImage("Rims1955.png");
  DecalMinion = loadImage("DecalMinion.png");
  DecalKitty = loadImage("DecalKitty.png");
  DecalFlames = loadImage("DecalFlames.png");
  AddonFlux = loadImage("AddonFlux.png");
  AddonFoxtail = loadImage("AddonFoxtail.png");
  
  //Sound
  file = new SoundFile(this, "BFF.mp3");
  }

void draw() {
 background(255);
 drawCar(); 
 drawControls();
}

void drawCar() {
  // Car Ebeen1
  noTint();
  image(Ebene1, 0, 0);
  colorMode(HSB, 360, 100, 100);
  
  // Door
  noTint();
  tint(sliderDoor.myValue * 360, 75, 100);
  colorMode(HSB, 360, 100, 100);
  image(Door, 0, 0);
  
  // FrontHeck
  noTint();
  tint(sliderFrontHeck.myValue * 360, 75, 100);
  image(FrontHeck, 0, 0);
  noTint();
  
  
  // Rims
  if (tabButtonRims.activeTab == 0) {
    image(Rims1985,  0, 0); textFont(myFontUI, 24); fill(0); text("Classic", 445, 430);  
    }else if (tabButtonRims.activeTab == 1) {
     image(RimsCountach, 0, 0);  textFont(myFontUI, 24); fill(0); text("Countach", 445, 430);  
    } else if (tabButtonRims.activeTab == 2) {
     image(RimsF40, 0, 0); textFont(myFontUI, 24); fill(0); text("F40", 445, 430);  
     } else if (tabButtonRims.activeTab == 3) {
     image(Rims1955, 0, 0);  textFont(myFontUI, 24); fill(0); text("1955", 445, 430);   
    } 
 
  // Decals
  if (tabButtonDecals.activeTab == 0) {
    }else if (tabButtonDecals.activeTab == 1) {
     image(DecalMinion, 0, 0);  textFont(myFontUI, 24); fill(0); text("Minion", 445, 530);  
    } else if (tabButtonDecals.activeTab == 2) {
     image(DecalKitty, 0, 0); textFont(myFontUI, 24); fill(0); text("Hello Kitty", 445, 530);  
     } else if (tabButtonDecals.activeTab == 3) {
     image(DecalFlames, 0, 0);  textFont(myFontUI, 24); fill(0); text("Flames", 445, 530);   
    } 
    
  // ToggleButton
  // Foxtail
  if (toggleButtonFoxtail.myStateActive) {
    image(AddonFoxtail, 0, 0);
     } else {
     }
        
 //Flux
  if (toggleButtonFlux.myStateActive) {
    image(AddonFlux, 0, 0);
    file.play(); file.amp(0.08); file.loop();
    } else {
    file.stop();
    }
}
  
void drawControls() {
  //Drawing of Interfaceelements
  sliderDoor.draw();
  sliderFrontHeck.draw();
  tabButtonRims.draw();
  tabButtonDecals.draw();
  toggleButtonFlux.draw();
  toggleButtonFoxtail.draw();
  
  //Text for Sliders/Buttons
  textFont(myFontUI, 24);
  fill(0);  
    //Doors
  text("Door Color", 40, 430);
    //FrontHeck  
  text("Front & Heck Color", 40, 530);
   //Addons
  text("Foxtail", 720, 430);
  text("Timetravel", 720, 530); 
  
  //Text for Tabmenues
  textFont(myFontUI, 24);
  fill(0);
  text("Felgen", 360, 430);
  
  textFont(myFontUI, 24);
  fill(0);
  text("Decals", 360, 530);
  }