import 'package:flutter/material.dart';
import 'package:sooshiz/utils/constants.dart';

class Categorie {
  String image, name;
  Color color;

  Categorie({
    this.image = "",
    this.name = "",
    this.color = Colors.blue,
  });
}

var categorieList = [
  Categorie(
    color: Crusoe500,
    image: "assets/images/categories/all.png",
    name: "All",
  ),
  Categorie(
    color: Crusoe200,
    image: "assets/images/categories/nigiri.png",
    name: "Nigiri",
  ),
  Categorie(
    color: Crusoe200,
    image: "assets/images/categories/salad.png",
    name: "Salad",
  ),
  Categorie(
    color: Crusoe200,
    image: "assets/images/categories/maki.png",
    name: "Maki",
  ),
  Categorie(
    color: Crusoe200,
    image: "assets/images/categories/nigiri.png",
    name: "Nigiri",
  ),
  Categorie(
    color: Crusoe200,
    image: "assets/images/categories/nigiri.png",
    name: "Nigiri",
  ),

];
