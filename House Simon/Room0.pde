class Room0 {
  float x, y;
  float light;
  float room_color;

// dette tager imod de bestemte værdier som localition og farve. Man kan også gøre det med strings og andre ting hvis man vil.
  Room0(float x, float y, float b) {
    this.x = x;
    this.y = y;
    this.room_color = b;
  }

// dette gør kanten tyk samt giver rummet sin farve og form.
  void drawRoom0() {
    if (isCursorOver()) {
      strokeWeight(4);
    } else {
      strokeWeight(0);
    }
    fill(100-room_color + light, 100-room_color + light, 100 + light);
    square(x + 250, y + 400, 100);
  }
  // Dette er en funktion der finder ud af om musen er over rummet.
    boolean isCursorOver() {
      return (mouseX > x + 250 - 100 / 2 + 50 && mouseX < x + 250 + 100 / 2 + 50 &&
        mouseY > y + 400 - 100 / 2 + 50 && mouseY < y + 400 + 100 / 2 + 50);
    }
  }
