import 'package:flutter/material.dart';

class Meal {
  String name, description, priceAfter, rating, priceBefore, image;
  bool isNew, isPopular;

  Meal({
    this.image = "",
    this.name = "",
    this.description = "",
    this.priceBefore = "",
    this.priceAfter = "",
    this.rating = "",
    this.isNew = false,
    this.isPopular = false,

  });
}

var mealList = [
  Meal(name: "The Full Flock",
      rating: "4.2",
      priceBefore: "12.99",
      image:"assets/images/meals/the_full_flock.png",
      description: "Served with pickles, spring onions and ketchup",
      isNew: true,
      isPopular: false,
      priceAfter: "9"),
  Meal(name: "Crunchy Prawn Roll",
      rating: "4.2",
      priceBefore: "14.99",
      image:"assets/images/meals/crunchy_Prawn_Roll.png",
      description: "Served with pickles, spring onions and ketchup",
      isNew: false,
      isPopular: false,
      priceAfter: "11"),
  Meal(name: "Avocado Maki",
      rating: "4.2",
      priceBefore: "12.99",
      image:"assets/images/meals/avocado_maki.png",
      description: "Served with pickles, spring onions and ketchup",
      isNew: false,
      isPopular: true,
      priceAfter: "9"),
  Meal(name: "Sooshiz Combination",
      rating: "4.2",
      priceBefore: "12.99",
      image:"assets/images/meals/sooshiz_combination.png",
      description: "Served with pickles, spring onions and ketchup",
      isNew: false,
      isPopular: true,
      priceAfter: "9"),
];