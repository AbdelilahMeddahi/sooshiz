import 'package:flutter/material.dart';
import 'package:sooshiz/utils/constants.dart';

class Dishes {
  String priceNow, priceBefore, rating, image, foodName;
  Color color;

  Dishes({
    this.priceNow = '',
    this.priceBefore = '',
    this.rating = "",
    this.image = "",
    this.foodName = "",
    this.color = Colors.blue,
  });
}

var dishesList = [
  Dishes(
    color: Shrinmp200,
    image: "assets/images/dishes/katsu_curry.png",
    foodName: "Katsu Curry",
    priceBefore: "12.99",
    priceNow: "9",
    rating: "4.2",
  ),
  Dishes(
    color: Green400,
    image: "assets/images/dishes/avocado_maki.png",
    foodName: "Avocado Maki",
    priceBefore: "12.99",
    priceNow: "9",
    rating: "4.1",
  ),
  Dishes(
    color: Shrinmp200,
    image: "assets/images/dishes/katsu_curry.png",
    foodName: "Katsu Curry",
    priceBefore: "12.99",
    priceNow: "9",
    rating: "4.2",
  ),
];
