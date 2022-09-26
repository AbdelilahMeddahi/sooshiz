import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sooshiz/utils/constants.dart';

class SecondPageViewModel extends StatelessWidget {

  const SecondPageViewModel({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Shrinmp200,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0, -2),
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: width * 662 / 414,
                    width: width * 662 / 414,
                    decoration: BoxDecoration(
                        color: Color(0xFF428144), shape: BoxShape.circle),
                  ),
                  Container(
                    height: width * 530.45 / 414,
                    width: width * 530.45 / 414,
                    decoration: BoxDecoration(
                        color: Color(0xFFF49866), shape: BoxShape.circle),
                  ),
                  Container(
                    height: width * 333.14 / 414,
                    width: width * 333.14 / 414,
                    decoration: BoxDecoration(
                        color: Color(0xFFF88140), shape: BoxShape.circle),
                  ),
                  Container(
                    height: width * 257.35 / 414,
                    width: width * 257.35 / 414,
                    decoration: BoxDecoration(
                        color: Color(0xFFFE6A1A), shape: BoxShape.circle),
                  ),
                  Image.asset(
                    "assets/images/onboarding/onBoarding2.png",
                    width: width ,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
