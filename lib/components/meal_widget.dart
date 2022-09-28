import 'package:flutter/material.dart';
import 'package:sooshiz/utils/constants.dart';

class MealWidget extends StatelessWidget {
  final String name, description, priceAfter, rating, priceBefore, image;
  final bool isNew, isPopular;

  const MealWidget(
      {Key? key,
      required this.name,
      required this.description,
      required this.priceAfter,
      required this.rating,
      required this.priceBefore,
      required this.image,
      required this.isNew,
      required this.isPopular})
      : super(key: key);

  showPopularOrNewwidget() {
    if (isNew) {
      return Container(
        height: 22,
        width: 72,
        decoration: BoxDecoration(
          color: Shrinmp100,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.flash_on_outlined,
              color: Shrinmp300,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "NEW",
              style: TextStyle(
                fontSize: 12,
                color: Shrinmp300,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    } else if (isPopular) {
      return Container(
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
      );
    } else
      return SizedBox(width: 1,);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        height: 129,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: white
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Row(
            children: [
              Image.asset("$image"),
              SizedBox(
                width: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        showPopularOrNewwidget(),
                      ],
                    ),
                    Text("$name",style: TextStyle(
                      color: Gray500,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),),
                    Container(
                      width: 223,
                      child: Text(
                        "$description",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Gray300,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "\$" + "$priceAfter",
                              style: TextStyle(color: Gray500, fontSize: 24)),
                          TextSpan(
                              text: ".99",
                              style: TextStyle(color: Gray300, fontSize: 16)),
                          TextSpan(text: "  "),
                          TextSpan(
                            text: "\$" + "$priceBefore",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
