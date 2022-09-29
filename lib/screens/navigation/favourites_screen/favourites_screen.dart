import 'package:flutter/material.dart';
import 'package:sooshiz/components/categorie/categorie_list.dart';
import 'package:sooshiz/components/meal/meal_list.dart';
import 'package:sooshiz/model/meal.dart';
import 'package:sooshiz/utils/constants.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: 110,
              floating: true,
              pinned: true,
              snap: false,
              elevation: 2,
              titleSpacing: 0,
              backgroundColor: white,
              title: Padding(
                padding: const EdgeInsets.only(left: 26.0, right: 16.0, top: 4),
                child: Text(
                  "My List",
                  style: TextStyle(color: Gray500, fontSize: 26,fontWeight: FontWeight.bold),
                ),
              ),
              bottom: AppBar(
                elevation: 0,
                titleSpacing: 0,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                title: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 8,bottom: 8),
                  child: Container(
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
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.search,
                                  color: Gray300,
                                ),
                                SizedBox(
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
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black),
                          child: Icon(Icons.date_range),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  //the list of the menu
                  SizedBox(
                    height: 26,
                  ),
                  CategoriesList(),
                  SizedBox(
                    height: 29,
                  ),
                  MealList(listName: likedMealsList),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
