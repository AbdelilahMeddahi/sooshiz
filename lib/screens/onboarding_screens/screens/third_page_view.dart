import 'package:flutter/material.dart';
import 'package:sooshiz/utils/constants.dart';

class ThirdPageViewModel extends StatelessWidget {

  const ThirdPageViewModel({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xFFFF7373),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -2),
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: width * 662 / 414,
                    width: width * 662 / 414,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFF7373), shape: BoxShape.circle),
                  ),
                  Container(
                    height: width * 530.45 / 414,
                    width: width * 530.45 / 414,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFE8585), shape: BoxShape.circle),
                  ),
                  Container(
                    height: width * 333.14 / 414,
                    width: width * 333.14 / 414,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFF9191), shape: BoxShape.circle),
                  ),
                  Container(
                    height: width * 257.35 / 414,
                    width: width * 257.35 / 414,
                    decoration: BoxDecoration(
                        color: Tuna200, shape: BoxShape.circle),
                  ),
                  Image.asset(
                    "assets/images/onboarding/onBoarding3.png",
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
