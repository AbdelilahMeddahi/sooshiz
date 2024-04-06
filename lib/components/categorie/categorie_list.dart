import 'package:flutter/material.dart';
import 'package:sooshiz/components/categorie/categorie_widget.dart';
import 'package:sooshiz/model/categories.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categorieList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              left: index == 0 ? 16 : 20,
              right: index == categorieList.length-1  ? 16 : 0,
            ),
            child: CategorieWidget(
              categorieName: categorieList[index].name,
              image: categorieList[index].image,
              color: categorieList[index].color,
            ),
          );
        },
      ),
    );
  }
}
