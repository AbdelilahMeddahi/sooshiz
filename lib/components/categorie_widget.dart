import 'package:flutter/material.dart';
import 'package:sooshiz/utils/constants.dart';

class CategorieWidget extends StatelessWidget {
  final String categorieName,image;
  final Color color;
  const CategorieWidget({Key? key, required this.image,required this.categorieName,required this.color,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 126,
      width: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(500),
        color: color
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 68,
            width: 68,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: white
            ),
            child: Center(
              child: Image.asset("$image",),
            ),
          ),
          SizedBox(height: 10,),
          Text("$categorieName",style: TextStyle(
            color: white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),),
        ],
      ),
    );
  }
}
