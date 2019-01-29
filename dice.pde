//Dice Rolling Program - Caleb

PImage face;
PImage leftEye;
PImage rightEye;
PImage smile;
PImage[] dice = new PImage[6];
float leftRandom;
float rightRandom;

void setup() {
  size(192, 240);
  background(255);
  fill(0);
  textSize(50);

  leftRandom = random(0, 6);
  rightRandom = random(0, 6);

  face = loadImage("face.jpg");
  smile = loadImage("smile.png");
  dice[0] = loadImage("01.png");
  dice[1] = loadImage("02.png");
  dice[2] = loadImage("03.png");
  dice[3] = loadImage("04.png");
  dice[4] = loadImage("05.png");
  dice[5] = loadImage("06.png");

  //line(0,0,width,height);
  //line(192,0,0,240);

  image(face, 0, 0);

  leftEye = dice[int(leftRandom)];
  rightEye = dice[int(rightRandom)];
}

void draw() {

  if (mousePressed) {
    image(leftEye, 42, 90);
    leftRandom = random(0, 6);
    leftEye = dice[int(leftRandom)];
    image(smile, 47, 144);
  }
  if (mousePressed) {
    image(rightEye, 109, 90);
    rightRandom = random(0, 6);
    rightEye = dice[int(rightRandom)];
  }
  delay(50);
}
