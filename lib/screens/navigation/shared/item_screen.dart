import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sooshiz/components/buttons/main_button.dart';
import 'package:sooshiz/model/meal.dart';
import 'package:sooshiz/screens/cart/cart_screen.dart';
import 'package:sooshiz/utils/constants.dart';
import 'package:sooshiz/utils/styles.dart';

class ItemScreen extends StatefulWidget {
  final Meal meal;

  ItemScreen({super.key, required this.meal});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200 + 160,
              color: Crusoe200,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                          enlargeCenterPage: true,
                          height: 350,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.6,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      items: widget.meal.images.map((image) {
                        return Builder(
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 320,
                              width: 320,
                              child: Image.asset(
                                image,
                                height: 320,
                                width: 320,
                                fit: BoxFit.contain,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 26.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            widget.meal.images.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: _current == entry.key ? 40.0 : 22.0,
                              // Adjust width for selected indicator
                              height: 12.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                shape: _current == entry.key
                                    ? BoxShape.rectangle
                                    : BoxShape.rectangle,
                                // Use BoxShape.rectangle for selected indicator
                                borderRadius: _current == entry.key
                                    ? BorderRadius.circular(6.0)
                                    : BorderRadius.circular(6.0),
                                // Apply border radius for rectangle shape
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Gray400
                                        : Gray400)
                                    .withOpacity(
                                        _current == entry.key ? 0.4 : 0.2),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, top: 60),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20, top: 60),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Icon(
                            CupertinoIcons.heart,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 188 + 160,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: padding, top: 28),
                        child: Row(
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
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${widget.meal.rating}",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Yellow400,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
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
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${widget.meal.rating}",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Yellow400,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: padding, left: padding),
                        child: Text(
                          textAlign: TextAlign.start,
                          "${widget.meal.name}",
                          style: TextStyles.heading1Style,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: padding, left: padding),
                        child: Text(
                          "Size",
                          style: TextStyles.heading3Style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: padding, vertical: 12),
                        child: SizedBox(
                          height: 44,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Crusoe300,
                                    borderRadius: BorderRadius.circular(29)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24.0, vertical: 10),
                                  child: Text(
                                    "Small",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xFFEDEEEF),
                                    borderRadius: BorderRadius.circular(29)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0, vertical: 10),
                                  child: Text(
                                    "Medium",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Crusoe400,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xFFEDEEEF),
                                    borderRadius: BorderRadius.circular(29)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0, vertical: 10),
                                  child: Text(
                                    "Large",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Crusoe400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: padding, left: padding),
                        child: Text(
                          "8 pieces",
                          style: TextStyle(
                              color: Shrinmp300,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: padding),
                        child: Text(
                          "Quantity",
                          style: TextStyles.heading3Style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: padding),
                        child: SizedBox(
                          height: 45,
                          width: 145,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    color: Crusoe300),
                                width: 45,
                                height: 45,
                                child: const Center(
                                    child: Text(
                                  "+",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22,
                                      color: Colors.white),
                                )),
                              ),
                              const Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins"),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    color: Gray100),
                                width: 45,
                                height: 45,
                                child: Center(
                                    child: Text(
                                  "-",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22,
                                      color: Gray300),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(padding),
                            child: SizedBox(
                              height: 33,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Gray500,
                                    ),
                                  ),
                                  const Text(
                                    "\$25",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: padding),
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height:
                                            MediaQuery.sizeOf(context).height -
                                                370,
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(16),
                                                topRight: Radius.circular(16))),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            SizedBox(
                                              height: 100,
                                              child: Image.asset(
                                                  "assets/images/added_to_cart_success.png"),
                                            ),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            const Text(
                                              "Item Added To Cart!",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Poppins",
                                                  color: Colors.black),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(padding),
                                              child: Text(
                                                "Yay, it looks so delicious. You can always check the selected items by clicking on the cart icon in the home page",
                                                textAlign: TextAlign.center,
                                                style:
                                                    TextStyles.paragraph1Style,
                                              ),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.all(
                                                    padding),
                                                child: MainButton(
                                                  onTap: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                                                  },
                                                  text: 'Go to cart',
                                                  backgroundColor: Shrinmp300,
                                                  textColor: white,

                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: padding,
                                                  left: padding,
                                                  right: padding),
                                              child: Center(
                                                child: Text(
                                                  "Continue Shopping",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: Shrinmp300,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                height: 61,
                                decoration: BoxDecoration(
                                  color: Shrinmp300,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "Add to cart",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
