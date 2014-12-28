int yX = 200;
int yY = 250;
int yW = 150;
int yH = 180;

void yuHover()
{
  if ((mouseX >= 200) && (mouseX <= 350) && (mouseY >= 250) && (mouseY <= 430))
  {
    tint(0, 153, 204);
  } // end if

  else
  {
    noTint(); // NB!
  } //end else
} // end yuHover

void colourY()
{
  if ((mouseX >= 200) && (mouseX <= 350) && (mouseY >= 250) && (mouseY <= 430))
  {
    fill(255);
    textFont(font, 16);
    textLeading(25);
    text("Y\nU\nU\nJ\nI", 210, 270);
  } // end if
} // end colourY

