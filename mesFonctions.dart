import 'dart:io';

int saisirX() {
  bool valide = false;
  int i = 0;
  while (!valide) {
    print("joueur 1 entrez les coordonnées de x");
    try {
      int coordX = int.parse(stdin.readLineSync().toString());
      if (coordX <= 0 || coordX > 3) {
        print("Veuillez saisir un nombre entre 1 et 3");
        saisirX();
      } else if (coordX >= 1 && coordX <= 3) {
        return coordX;
      }
    } catch (e) {
      print("Erreur dans la saisie ! ");
    }
  }
}

int saisirY() {
  bool valide = false;

  while (!valide) {
    print("joueur 1 entrez les coordonnées de y");
    try {
      int coordY = int.parse(stdin.readLineSync().toString());
      if (coordY <= 0 || coordY > 3) {
        print("Veuillez saisir un nombre entre 1 et 3");
        saisirY();
      } else if (coordY >= 1 && coordY <= 3) {
        return coordY;
      }
    } catch (e) {
      print("Erreur dans la saisie ! ");
    }
  }
}

bool caseVide(int coordX, int coordY) {
  bool vide = false;

  return vide;
}
