Room0[] house = new Room0[6];

void setup() {
  size(800, 800);
  // Vilderen hjalp med med denne del :)
  // Dette bestemmer hvor og hvilken farve hvert rum har
  house[0] = new Room0(0,0,0);
  house[1] = new Room0(100,0,20);
  house[2] = new Room0(200,0,40);
  house[3] = new Room0(0,100,60);
  house[4] = new Room0(100,100,80);
  house[5] = new Room0(200,100,100);
}

// Her tegner den de 6 rum hver frame samt taget.
void draw() {
  background(220);
  strokeWeight(1);
  fill(200,200,200);
  triangle(230,400,400,200,570,400);
  for (int i = 0; i < house.length; i++) {
    house[i].drawRoom0();
  }
}

// Når man trykker på musen går den gennem alle de 6 rum til den finder den husen er over. Derefter ændre den farven på den så den lyser.
// Hvis lyset er tændt slukker den for lyset i stedet.
void mousePressed() {
  for (int i = 0; i < house.length; i++) {
    if (house[i].isCursorOver()) {
      if (house[i].light != 155 + house[i].room_color) {
        house[i].light = 155 + house[i].room_color;
      } else {
        house[i].light = 0;
      }
    }
  }
}
