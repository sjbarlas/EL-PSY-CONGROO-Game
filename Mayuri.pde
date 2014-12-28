int maX = 40;
int maY = 450;
int maW = 150;
int maH = 180;

void mayuriHover()
{
  if ((mouseX >= 40) && (mouseX <= 190) && (mouseY >= 450) && (mouseY <= 630))
  {
    tint(0, 153, 204);
  } // end if

  else
  {
    noTint(); // NB!
  } //end else
} // end mayuriHover

void colourMa()
{
  if ((mouseX >= 40) && (mouseX <= 190) && (mouseY >= 450) && (mouseY <= 630))
  {
    fill(255);
    textFont(font, 16);
    textLeading(25);
    text("M\nA\nY\nU\nR\nI", 50, 470);
  } // end if
} // end colourMa

