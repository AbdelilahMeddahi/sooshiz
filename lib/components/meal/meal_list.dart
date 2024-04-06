import 'package:flutter/material.dart';
import 'package:sooshiz/components/meal/meal_widget.dart';
import 'package:sooshiz/model/meal.dart';

class MealList extends StatelessWidget {
  final List<Meal> listName;
  const MealList({Key? key, required this.listName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0),
      child: SizedBox(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: listName.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                bottom: index == listName.length - 1 ? 0 : 16,
              ),
              child: MealWidget(
                meal: listName[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
