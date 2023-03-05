import 'dart:io';
import 'mesFonctions.dart';

main(List<String> args) {
  //génère le tableau de jeu
  List<List<String>> monTab1 =
      List.generate(3, (index) => List.generate(3, (index) => ""));

  for (var y = 0; y < monTab1.length; y++) {
    for (var x = 0; x < monTab1[y].length; x++) {}
  }
  // création d'un booléen pour joueur

  bool joueur = true;
  // variable qui définie le nombre de tour joué
  var i = 1;
  // Tant que le nombre de tour est inférieur à 10 le jeu continu
  while (i < 10) {
    // Le joueur 1 joue
    if (joueur == true) {
      // Saisie des coordonnées si erreur redemande la saisie des 2 coord

      int coordX = saisirX();
      print(coordX);

      int coordY = saisirY();
      print(coordY);

      // Vérifie si la case est vide

      if (monTab1[coordX - 1][coordY - 1] != "") {
        print("La case est déjà jouée");
        // Ajoute "X" à l'emplacement demandé
      } else if (monTab1[coordX - 1][coordY - 1] == "") {
        monTab1[coordX - 1][coordY - 1] = "X";
        print(monTab1);
      }
    }
  }
  i++;

  joueur = false;

  //test les lignes
  for (int k = 0; k < 3; k++) {
    if ((monTab1[k][0] == "X" &&
        (monTab1[k][0] == monTab1[k][1]) &&
        (monTab1[k][0] == monTab1[k][2]))) {
      print("Le joueur 1 gagne (ligne complète)");
      i = 10;
    }
  }
  //test des colonnes
  for (int k = 0; k < 3; k++) {
    if ((monTab1[0][k] == "X" &&
        (monTab1[0][k] == monTab1[1][k]) &&
        (monTab1[0][k] == monTab1[2][k]))) {
      print("Le joueur 1 gagne (colonne complète)");
      i = 10;
    }
  }
  //test des diagonales

  if ((monTab1[0][0] == "X") &&
      (monTab1[0][0] == monTab1[1][1]) &&
      (monTab1[1][1] == monTab1[2][2])) {
    print("Le joueur 1 gagne (diagonale complète)");
    i = 10;
  }
  if ((monTab1[0][2] == "X") &&
      (monTab1[0][2] == monTab1[1][1]) &&
      (monTab1[1][1] == monTab1[2][0])) {
    print("Le joueur 1 gagne (diagonale complète)");
    i = 10;
  }
}

  //Permets de s'arrêter lorsque le tableau est remplie
  

