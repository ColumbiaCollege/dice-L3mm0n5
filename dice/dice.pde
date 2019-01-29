//Dice Rolling Program - Caleb
//*Heavily inspired by the peer-made dice script shown in class*

PImage face;
PImage leftEye;
PImage rightEye;
PImage smile;
PImage[] dice = new PImage[6];
float leftRandom;
float rightRandom;

void setup() {
  //window size
  size(192, 240);
  //remove outlines
  noStroke();

  //set leftRandom and rightRandom to a random 
  //number between 0 and 5.999, respectively
  leftRandom = random(0, 6);
  rightRandom = random(0, 6);

  //load various images
  face = loadImage("face.jpg");
  smile = loadImage("smile.png");
  dice[0] = loadImage("01.png");
  dice[1] = loadImage("02.png");
  dice[2] = loadImage("03.png");
  dice[3] = loadImage("04.png");
  dice[4] = loadImage("05.png");
  dice[5] = loadImage("06.png");

  ////symmetrical diagonal reference lines 
  //line(0,0,width,height);
  //line(192,0,0,240);

  //load face image
  image(face, 0, 0);

  //set leftEye and rightEye to random 
  //integers between 0 and 5, respectively
  leftEye = dice[int(leftRandom)];
  rightEye = dice[int(rightRandom)];
}

void draw() {
  
  //when mouse is pressed, cycle through die eyes 
  if (mousePressed) {
    
    //cover smile
    rect(47, 144, 95, 54);
    
    //display leftEye
    image(leftEye, 42, 90);
    
    //set leftRandom to value between 0 and 5.999
    leftRandom = random(0, 6);
    
    //display random left die eye between 1 and 6 pips
    leftEye = dice[int(leftRandom)];
    
    //display rightEye
    image(rightEye, 109, 90);
    
    //set rightRandom to value between 0 and 5.999
    rightRandom = random(0, 6);
    
    //display random right die eye between 1 and 6 pips
    rightEye = dice[int(rightRandom)];
    
    //slight delay between die eye cycles
    delay(50);
  }
}
// when mouse is released, display smile
void mouseReleased() {
  image(smile, 47, 144);
}
