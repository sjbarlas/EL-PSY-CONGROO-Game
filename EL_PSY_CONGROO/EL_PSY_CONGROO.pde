/* 
 EL PSY CONGROO
 Saira J. Barlas
 C12809080
 DT228/2
 */

import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

// BGM
Minim minim;
AudioPlayer sou;

int play = 1;
int howto = 0;
PImage img; // Home screen
PImage img2; // Okabe
PImage img3; // Suzuha
PFont font;
PFont font2;
ArrayList blocks;
int bhealth; // Block health
int score; // Player score
int ac = 1;
int time;
int speed = 1; // speed of the blocks
boolean shoot; // Shooting the laser
boolean loss;
float strikes;

void setup() 
{
  size(600, 600);
  blocks = new ArrayList();

  // BGM
  minim = new Minim(this);
  sou = minim.loadFile("Makise.mp3");
  sou.loop();

  background(255); // White background
  img = loadImage("aa.jpg");
  img2 = loadImage("o.jpg");
  img3 = loadImage("s.jpg");
  font = loadFont("Gisha-Bold-35.vlw");
  font2 = loadFont("CenturyGothic-Italic-16.vlw");
  smooth();
} // end setup

void draw() 
{
  // Home screen
  if (play == 1) 
  {
    // Hovering over "PLAY"
    if (((mouseX >= 256) && (mouseX <= 336)) && ((mouseY >= 215) && (mouseY <= 275))) // Hover
    {
      fill(64, 122, 106); // ellipse changes colour when hovered
      ellipse(300, 250, 80, 50);

      fill(255); // PLAY turns white
      textFont(font, 13);
      text("PLAY", 285, 255); // places PLAY text on the box

      if (mousePressed) 
      {
        play = 0;
        background(255);
      } // end mousePressed
    } // end mouseX and mouseY

    else 
    {
      // Default display of the splash screen
      imageMode(CENTER);
      image(img, 300, 400, 600, 404);

      stroke(64, 122, 106); // outline of ellipse
      fill(122, 64, 80); // colour of the ellipse at the start
      ellipse(300, 250, 80, 50);

      fill(64, 122, 106); // colour of EL PSY CONGROO
      textFont(font, 35); // size of EL PSY CONGROO
      text("EL PSY CONGROO", 140, 100);
      textSize(13); // size of PLAY
      text("PLAY", 285, 255);
    } // end else
  } // end play

  else
  {
    imageMode(CENTER);
    image(img2, 510, 800, 400, 1143); // Okabe
    imageMode(CENTER);
    image(img3, 150, 760, 300, 956); // Suzuha
    
    // How to Screen
    if (howto == 0)
    {
      fill(0);
      text("Suzuha: Okabe due to a DT228 assignment, you have to play this game!", 70, 60);
      text("Okabe: WHAT?!", 70, 75);
      text("Suzuha: It's one of the ways to get out of this time line!", 70, 90);
      text("Okabe: Fair enough Suzuha, what do I need to do to get out of this", 70, 105);
      text("predicament?", 130, 120);
      text("Suzuha: You have to move using the cursor and shoot the blocks", 70, 135);
      text("that come towards you but-", 130, 150);
      text("Okabe: What is this? A childish computer game?!", 70, 165);
      text("Suzuha: ...clearly but you have only 1 life...", 70, 180);
      text("Okabe: MWAHAHA take this NASA! Your petty games don't make-", 70, 195);
      text("Suzuha: Yeah yeah get to it, but as I was-", 70, 210);
      text("Okabe: EL PSY CONGROO!!!", 70, 225);
      text("Suzuha: ...saying don't forget to press", 70, 240);
      text("and hold the S key to", 160, 255);
      text("start the game...", 180, 270);

      if (keyPressed)
        if ((key == 'S') || (key == 's'))
        {  
          if (!loss)
          {
            background(255); // white
            frameRate(30);

            enemyLvl();
            entry();
            moveBlock(); // moving the blocks
            attack(); // Needed to kill off the blocks as the laser passes through
            display(); // Everything on the screen
            Losing();

            text("Score: " + score, 10, 590);
            text("Block health: " + bhealth, 500, 590);
            time++;
          } // end if

          else
          {
            fill(255, 0, 0);
            text("GAME OVER", 200, 30);
            text("SCORE: " + score, 300, 30);
          } // end else

          shoot = false;
        } // end if key
    } // end if keypressed
  } // end if how to
} // end else

void mousePressed()
{
  shoot = true;
  strikes ++; // Add strikes
} // end mousePressed

class Block
{
  int x; // x width
  int y; // y height
  int r; // r width of the blocks
  int mh; // maximum health
  int h; // health of the block
  float speed; // speed

    Block(int qx, int qr, float qspeed, int qh)
  {
    x = qx; // x width
    r = qr; // y height
    speed = qspeed; // speed
    mh = qh; // maximum health
    h = mh; // health
  } // end Block

  void move() // makes the blocks move down towards the player
  {
    y += speed; // speed of the blocks coming down
  } // end move

  void display()
  {
    stroke(255, 0, 0);
    fill(173, 166, 168); // colour of the blocks
    rect(x, y, r, r); // blocks
    fill(0, 0, 255); // colour of the lvl
    text(h, x + 10, y + 15);
  } // end display
} // end class Block

void entry()
{
  if (time == 30) // the time it takes for blocks to appear between intervals
  {
    time = 0;
    Block qa = new Block(int(random(30, 470)), int(random(20, 40)), speed, bhealth); // new blocks
    blocks.add(qa); 
    qa = null;
    ac++;
  } // end if
} // end entry

void moveBlock() // random block movement
{
  for (int i = 0; i < blocks.size (); i++)
  {
    Block qa = (Block)blocks.get(i);
    qa.move();
  }
} // end moveBlock

void display()
{
  for (int i = 0; i < blocks.size (); i++)
  {
    Block qa = (Block)blocks.get(i); // blocks coming in onto the screen
    qa.display(); // displaying the blocks
    qa = null;
  } // end for
  
  // Player
  fill(0); 
  rect(mouseX, 500, 40, 600);
  rect(mouseX, 500, 40, 600);
  if (shoot)
  {
    stroke(0);
    line(mouseX+20, 0, mouseX+20, 600); // the lazer
    stroke(255);
  } // end if
} // end display

void attack()
{
  if (shoot)
  {
    for (int i = 0; i < blocks.size (); i++)
    {
      Block qa = (Block) blocks.get(i);
      if (mouseX < qa.x + qa.r && mouseX > qa.x - qa.r)
      {
        qa.h -= 1; // minus health
        if (qa.h <= 0)
        {
          qa = null; // no block
          blocks.remove(i);
          score += int(speed) + bhealth; // score increases, the speed and block health increasess
        } // end if
        
        score ++;
        
      } // end if
    } // end for
  } // end if
} // end attack

void Losing() // player losing
{
  for (int i = 0; i < blocks.size (); i++)
  {
    Block qa = (Block) blocks.get(i);
    if (qa.y > 600) // block goes through the screen
    {
      loss = true; // player has lost
    } // end if
  } // end for
} // end Losing

void enemyLvl() 
{
  if (speed < 8 && ac >= 10)
  {
    speed = ac / 10;
  } // end if
  if (bhealth < 10 && ac >= 10) // 10 levels
  {
    bhealth = int(ac / 10);
  } // end if
} //end enemyLvl

