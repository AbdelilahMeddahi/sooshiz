import 'package:flutter/material.dart';
import 'package:sooshiz/utils/constants.dart';

class PickedForYou extends StatelessWidget {
  final String priceNow,priceBefore,rating,image,foodName;
  final Color color;
  const PickedForYou({Key? key, required this.priceNow, required this.priceBefore, required this.rating, required this.image, required this.foodName, required this.color}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 252,
        width: 190,
        child: Stack(
          children: [
            Container(
              height: 115,
              width: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8), topLeft: Radius.circular(8)),
                color: color,

              ),
            ),
            Image.asset("$image"),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 108,
                width: 184,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 22,
                            width: 61,
                            decoration: BoxDecoration(
                              color: Yellow100,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Yellow400,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "$rating",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Yellow400,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 22,
                            width: 96,
                            decoration: BoxDecoration(
                              color: Tuna100,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_fire_department_outlined,
                                  color: Tuna300,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "POPULAR",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Tuna300,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "$foodName",
                        style: TextStyle(
                            color: Gray500,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "\$"+"$priceNow",
                                    style:
                                        TextStyle(color: Gray500, fontSize: 24)),
                                TextSpan(
                                    text: ".99",
                                    style:
                                        TextStyle(color: Gray300, fontSize: 16)),
                                TextSpan(text: "  "),
                                TextSpan(
                                  text: "\$"+"$priceBefore",
                                  style: TextStyle(
                                      color: Gray300,
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
