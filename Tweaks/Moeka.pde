int mX = 40;
int mY = 50;
int mW = 150;
int mH = 180;

void moekaHover()
{
  if ((mouseX >= 40) && (mouseX <= 190) && (mouseY >= 50) && (mouseY <= 230))
  {
    tint(0, 153, 204);
  } // end if

  else
  {
    noTint(); // NB!
  } //end else
} // end moekaHover

void colourM()
{
  if ((mouseX >= 40) && (mouseX <= 190) && (mouseY >= 50) && (mouseY <= 230))
  {
    fill(255);
    textFont(font, 16);
    textLeading(25);
    text("M\nO\nE\nK\nA", 50, 70);
  } // end if
} // end colourM

