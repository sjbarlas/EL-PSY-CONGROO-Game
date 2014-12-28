int dX = 200;
int dY = 50;
int dW = 150;
int dH = 180;

void daruHover()
{
  if ((mouseX >= 200) && (mouseX <= 350) && (mouseY >= 50) && (mouseY <= 230))
  {
    tint(0, 153, 204);
  } // end if

  else
  {
    noTint(); // NB!
  } // end else
} // end daruHover

void colourD()
{
  if ((mouseX >= 200) && (mouseX <= 350) && (mouseY >= 50) && (mouseY <= 230))
  {
    fill(255);
    textFont(font, 16);
    textLeading(25);
    text("D\nA\nR\nU", 210, 70);
  } // end if
} // end colourD

