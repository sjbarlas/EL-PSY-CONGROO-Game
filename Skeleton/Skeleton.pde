ArrayList flowers;

ArrayList blocks;
int bhealth; // Block health
int score; // Player score
int ac = 1; // after how long should the blocks power up
int time;
int speed = 1; // speed of the blocks
boolean shoot; // Shooting the laser
boolean loss = false;
float strikes;
int speef = 1;

PImage flower;

void setup()
{
  blocks = new ArrayList();
  flowers = new ArrayList();
  size(600, 600);
  background(255);

  flower = loadImage("flower.png");
}

void draw() 
{ 
  if (loss == false)
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
} 

void mousePressed()
{
  shoot = true;
  strikes ++; // Add strikes
} // end mousePressed

class Flower
{
  int xF;
  int yF;
  float speedF;

  Flower(int fx, int fy, int fspeed)
  {
    xF = fx;
    yF = fy;
    speedF = fspeed;
  }

  void move2()
  {
    yF += speedF;
  } // end move2

  void display2()
  {
    image(flower, xF, yF);
  }
} // end Flowers

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

    Flower qb = new Flower(int(random(30, 470)), int(random(20, 40)), speef);
    flowers.add(qb);
    qb = null;
  } // end if
} // end entry

void moveBlock() // random block movement
{
  for (int i = 0; i < blocks.size (); i++)
  {
    Block qa = (Block)blocks.get(i);
    qa.move();
  }

  for (int i = 0; i < flowers.size (); i++)
  {
    Flower qb = (Flower)flowers.get(i);
    qb.move2();
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

  for (int i = 0; i < flowers.size (); i++)
  {
    Flower qb = (Flower)flowers.get(i);
    qb.display2();
    qb = null;
  }

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
  if (speed < 8 && ac >= 10) // on the 10th block the blocks are powered up
  {
    speed = ac / 10;
  } // end if
  if (bhealth < 10 && ac >= 10) // 10 levels
  {
    bhealth = int(ac / 10);
  } // end if
} //end enemyLvl
