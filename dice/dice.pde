//Dice Rolling Program

//creates integer "r", a number between 1 and 6
//int r = int(random(1,7));

//Display "r" in the center of the window
//textAlign(CENTER);
//text(r,width/2,height/2);

void draw() {
  if (mousePressed) {
    int r = int(random(1,7));
    textAlign(CENTER);
    text(r,width/2,height/2);
  }}
