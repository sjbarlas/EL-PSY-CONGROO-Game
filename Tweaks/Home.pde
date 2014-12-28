int hX = 20;
int hY = 225;
int hW = 500;
int hH = 478;

// Home screen
void home()
{
  // BG colours
  image(bg, 0, 0, 1120, 700); // background
  tint(230, 230, 250, 200);
  image(bg, -500, 0, 1120, 700);
  noTint();
  image(sg, hX, hY, hW, hH); // foreground

  // EL PSY CONGROO box
  fill(122, 64, 80); // maroon background
  rect(-150, 50, 570, 75);
  noFill();
  fill(192, 192, 192); // grey colour of font
  textFont(font2, 50);
  text("EL PSY CONGROO", 30, 105);

  // Hovering on arrow
  if ((mouseX >= 455) && (mouseX <= 520) && (mouseY >= 50) && (mouseY <= 120))
  {
    // bigger with colour change image
    image(arrow2, 435, 28, 120, 120);
    fill(2, 132, 130);
    text("PLAY", mouseX-50, mouseY-10);
  } // end if

  else
  {
    // start image
    image(arrow, 440, 36, 100, 100);
  } // end else
} // end home

void mouseClicked()
{
  // Instruction Screen
  if ((mouseX >= 455) && (mouseX <= 520) && (mouseY >= 50) && (mouseY <= 120))
  {
    instruct = true;
    home = false;
  } // end if

  // Character Selection
  if ((mouseX >= 180) && (mouseX <= 360) && (mouseY >= 450) && (mouseY <= 490))
  {
    instruct = false;
    charS = true;
  } // end if
  
  if ((mouseX >= 200) && (mouseX <= 350) && (mouseY >= 50) && (mouseY <= 230))
  {
    charS = false;
    game = true;
  } // 
} // end mouseClicked

