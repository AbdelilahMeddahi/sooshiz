import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sooshiz/screens/onboarding_screens/screens/first_page_view.dart';
import 'package:sooshiz/screens/onboarding_screens/screens/second_page_view.dart';
import 'package:sooshiz/screens/onboarding_screens/screens/third_page_view.dart';
import 'package:sooshiz/utils/constants.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  List infos = [
    [
      "Enjoy your Sooshiz sushi anywhere, at anytime",
      'With our fast delivery service, enjoy your sushi anywhere and at anytime'
    ],
    [
      "Tasty and fresh",
      'Explore our meals, made with fresh and tasty ingredients !'
    ],
    [
      "Book a table in advance and save your time",
      'Reserve your table and have the best experience at your restaurant'
    ]
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: PageScrollPhysics(),
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                pageIndex=index;
              });
            },
            children: [
              FirstPageViewModel(),
              SecondPageViewModel(),
              ThirdPageViewModel(),
            ],
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: width * 371 / 414,
                width: width * 385 / 414,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  infos[pageIndex][0],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              height: 72,
                            ),
                            SizedBox(
                              height: width * 15 / 414,
                            ),
                            Text(
                              infos[pageIndex][1],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Gray300),
                            ),
                            Container(
                              height: width * 32 / 414,
                              alignment: Alignment.bottomCenter,
                              child: SmoothPageIndicator(
                                controller: _controller,
                                count: 3,
                                effect: ExpandingDotsEffect(
                                  activeDotColor: Gray400,
                                  dotWidth: 16,
                                  spacing: 6,
                                  dotHeight: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        height: width * 122 / 414,
                        width: width * 353 / 414,
                        child: Column(
                          children: [
                            Container(
                              height: width * 61 / 414,
                              width: width * 353 / 414,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Shrinmp300,
                              ),
                              child: Center(
                                  child: Text(
                                'Get Started',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: white,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                            Container(
                              height: width * 61 / 414,
                              width: width * 353 / 414,
                              child: Center(
                                child: InkWell(
                                  onTap: (){},
                                  child: Text(
                                    "I already have an account",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Shrinmp300,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
