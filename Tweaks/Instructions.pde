void instruct()
{
  background(122, 64, 80);

  image(ok, 0, -80, 1600, 900);
  image(phone, 70, 50, 400, 974);
  //  int m = millis();
  //  noStroke();
  //  fill(m % 255);
  textFont(font, 20);
  fill(255);
  text("Instructions", 215, 200);
  textFont(font, 15);
  text("Select a character", 140, 240);
  text("Use the mouse control", 140, 260);

  // DONE box
  //fill(192, 192, 192);
  //fill(107, 107, 107);
  rect(180, 450, 180, 30);
  image(done, 180, 450, 180, 30);
  textFont(font, 20);
  text("DONE", 240, 473);
  //rect(180, 450, 180, 30);

  // Hovering onto DONE
  if ((mouseX >= 180) && (mouseX <= 360) && (mouseY >= 450) && (mouseY <= 490))
  {
    image(done2, 180, 450, 180, 30);
    textFont(font, 20);
    text("DONE", 240, 473);
  }
}
