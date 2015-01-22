int nX = 200;
int nY = 450;
int nW = 150;
int nH = 180;

void naeHover()
{
  if ((mouseX >= 200) && (mouseX <= 350) && (mouseY >= 450) && (mouseY <= 630))
  {
    tint(0, 153, 204);
  } // end if

  else
  {
    noTint(); // NB!
  } //end else
} // end naeHover

void colourN()
{
  if ((mouseX >= 200) && (mouseX <= 350) && (mouseY >= 450) && (mouseY <= 630))
  {
    fill(255);
    textFont(font, 16);
    textLeading(25);
    text("N\nA\nE", 210, 470);
  } // end if
} // end colourN

