import ddf.minim.*;

/* MUSIC */
// Char songs
Minim m;
Minim m2;
Minim m3;
Minim m4;
Minim m5;
Minim m6;
Minim m7;
Minim m8;
Minim m9;
Minim m10;
// Effects
Minim m11;
// BGM
Minim m12;

// Char songs
AudioPlayer one;
AudioPlayer two;
AudioPlayer three;
AudioPlayer four;
AudioPlayer five;
AudioPlayer six;
AudioPlayer seven;
AudioPlayer eight;
AudioPlayer nine;
AudioPlayer ten;
// Effects
AudioSnippet hover;
// BGM
AudioPlayer steiner;

/* IMAGES */
// Chars
PImage daru;
PImage moeka;
PImage faris;
PImage kurisu;
PImage yu;
PImage ruka;
PImage mayuri;
PImage nae;
PImage suzuha;
// Images
PImage sg; // team
PImage bg; // b&w
PImage arrow, arrow2;
PImage phone;
PImage ok;
PImage done, done2;

/* FONTS */
PFont font;
PFont font2;

/* SCREENS */
boolean home = true; // Home screen
boolean instruct = false; // Instructions screen
boolean charS = false; // char selection menu
boolean game = false; // game

void setup()
{
  m12 = new Minim(this);
  steiner = m12.loadFile("Gate of Steiner.mp3");

  //  m11 = new Minim(this);
  //  hover = m11.loadSnippet("hover.wav");

  if (home == true || instruct == true || charS == true) // Play song on home and instructions screen
  {
    steiner.loop();
    steiner.rewind();
  } // end if

  daru = loadImage("daru.jpg");
  moeka = loadImage("moeka.jpg");
  faris = loadImage("faris.jpg");
  kurisu = loadImage("kurisu.jpg");
  yu = loadImage("yu.jpg");
  ruka = loadImage("ruka.jpg");
  mayuri = loadImage("mayuri.jpg");
  nae = loadImage("nae.jpg");
  suzuha = loadImage("suzuha.jpg");
  sg = loadImage("sg.png");
  //badge = loadImage("badge.png");
  bg = loadImage("bg.jpg");
  arrow = loadImage("arrow.png");
  arrow2 = loadImage("arrow.png");
  arrow2.filter(INVERT);
  phone = loadImage("phone.png");
  ok = loadImage("ok.jpg");
  done = loadImage("done.png");
  done2 = loadImage("done.png");
  done2.filter(INVERT);

  font = loadFont("Batang-16.vlw");
  font2 = loadFont("BatangChe-50.vlw");

  blocks = new ArrayList();

  size(550, 700);
  background(255);
}

void draw()
{
  smooth();
  if (home == true)
  {
    home(); // Home screen
  } // end home

    if (instruct == true)
  {
    background(255); // Instruction screen
    noFill();
    instruct();
  } // end instruct

    //  if(charS == true)
  //  {
  //    charS();
  //  } // end charS

  // Char selection Menu
  if (charS == true)
  {    
    background(122, 64, 80);

    moekaHover();
    image(moeka, mX, mY, mW, mH);
    colourM();

    daruHover();
    image(daru, dX, dY, dW, dH);
    colourD();

    farisHover();
    image(faris, fX, fY, fW, fH);
    colourF();

    kurisuHover();
    image(kurisu, kX, kY, kW, kH);
    colourK();

    yuHover();
    image(yu, yX, yY, yW, yH);
    colourY();

    rukaHover();
    image(ruka, rX, rY, rW, rH);
    colourR();

    mayuriHover();
    image(mayuri, maX, maY, maW, maH);
    colourMa();

    naeHover();
    image(nae, nX, nY, nW, nH);
    colourN();

    suzuhaHover();
    image(suzuha, sX, sY, sW, sH);
    colourS();

    charS();
  } // end charS

    if (game == true)
  {
    game();
  } // end game
} // end draw


void close()
{
  steiner.close();
}

public void stop()
{
  steiner.close();
  super.stop();
}

