import 'package:flutter/material.dart';
import 'package:sooshiz/components/categorie/categorie_list.dart';
import 'package:sooshiz/components/meal/meal_list.dart';
import 'package:sooshiz/components/picked_for_you_widget.dart';
import 'package:sooshiz/model/meal.dart';
import 'package:sooshiz/utils/constants.dart';
import 'package:sooshiz/model/picked_for_you.dart';

import '../../cart/cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              titleSpacing: 0,
              toolbarHeight: 65,
              floating: true,
              pinned: true,
              snap: true,
              title: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 4),
                child: SizedBox(
                  height: 48,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 48,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Gray100,
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                color: Gray300,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Search",
                                style: TextStyle(
                                  color: Gray300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Gray100),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartScreen()));
                          },
                          child: Icon(Icons.date_range),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 17.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Tuna100,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      height: 118,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "20% OFF",
                                            style: TextStyle(
                                              color: Shrinmp300,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "APRIL BIG\nPROMO",
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 28,
                                              fontWeight: FontWeight.w500,
                                              height: 1,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Valid Until April 23rd",
                                            style: TextStyle(
                                              color: Shrinmp200,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Image.asset(
                                    "assets/images/home_page_images/special_price.png"))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Picked for you",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Gray500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Picked for you
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: SizedBox(
                        height: 252,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: dishesList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(
                                right: index == dishesList.length - 1 ? 0 : 27,
                              ),
                              child: PickedForYou(
                                priceNow: dishesList[index].priceNow,
                                priceBefore: dishesList[index].priceBefore,
                                rating: dishesList[index].rating,
                                image: dishesList[index].image,
                                foodName: dishesList[index].foodName,
                                color: dishesList[index].color,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 123,
                        decoration: BoxDecoration(
                          color: Shrinmp100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 154,
                                  height: 64,
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Book a table in advance and save your time",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Book a table",
                                            style: TextStyle(
                                                color: Shrinmp300,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Shrinmp300,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset("assets/images/table.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        height: 30,
                        width: 113,
                        child: Text(
                          "Categories",
                          style: TextStyle(
                              color: Gray500,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CategoriesList(),
                    const SizedBox(
                      height: 29,
                    ),
                    MealList(listName: mealList),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
