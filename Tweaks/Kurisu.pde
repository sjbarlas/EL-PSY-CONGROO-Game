int kX = 40;
int kY = 250;
int kW = 150;
int kH = 180;

void kurisuHover()
{
  if ((mouseX >= 40) && (mouseX <= 190) && (mouseY >= 250) && (mouseY <= 430))
  {
    tint(0, 153, 204);
  } // end if

  else
  {
    noTint(); // NB!
  } //end else
} // end kurisuHover

void colourK()
{
  if ((mouseX >= 40) && (mouseX <= 190) && (mouseY >= 250) && (mouseY <= 430))
  {
    fill(255);
    textFont(font, 16);
    textLeading(25);
    text("K\nU\nR\nI\nS\nU", 50, 270);
  } // end if
} // end colourK

