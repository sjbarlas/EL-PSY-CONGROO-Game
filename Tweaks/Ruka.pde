int rX = 360;
int rY = 250;
int rW = 150;
int rH = 180;

void rukaHover()
{
  if ((mouseX >= 360) && (mouseX <= 510) && (mouseY >= 250) && (mouseY <= 430))
  {
    tint(0, 153, 204);
  } // end if

  else
  {
    noTint(); // NB!
  } //end else
} // end rukaHover

void colourR()
{
  if ((mouseX >= 360) && (mouseX <= 510) && (mouseY >= 250) && (mouseY <= 430))
  {
    fill(255);
    textFont(font, 16);
    textLeading(25);
    text("R\nU\nK\nA", 370, 270);
  } // end if
} // end colourR

