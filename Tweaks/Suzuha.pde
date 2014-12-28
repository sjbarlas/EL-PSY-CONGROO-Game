int sX = 360;
int sY = 450;
int sW = 150;
int sH = 180;

void suzuhaHover()
{
  if ((mouseX >= 360) && (mouseX <= 510) && (mouseY >= 450) && (mouseY <= 630))
  {
    tint(0, 153, 204);
  } // end if

  else
  {
    noTint(); // NB!
  } //end else
} // end suzuhaHover

void colourS()
{
  if ((mouseX >= 360) && (mouseX <= 510) && (mouseY >= 450) && (mouseY <= 630))
  {
    fill(255);
    textFont(font, 16);
    textLeading(25);
    text("S\nU\nZ\nU\nH\nA", 370, 470);
  } // end if
} // end colourS

