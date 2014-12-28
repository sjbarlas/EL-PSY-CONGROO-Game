int fX = 360;
int fY = 50;
int fW = 150;
int fH = 180;

void farisHover()
{
  if ((mouseX >= 360) && (mouseX <= 510) && (mouseY >= 50) && (mouseY <= 230))
  {
    tint(0, 153, 204);
  } // end if

  else
  {
    noTint(); // NB!
  } //end else
} // end farisHover

void colourF()
{
  if ((mouseX >= 360) && (mouseX <= 510) && (mouseY >= 50) && (mouseY <= 230))
  {
    fill(255);
    textFont(font, 16);
    textLeading(25);
    text("F\nA\nR\nI\nS", 370, 70);
  } // end if
} // end colourF

