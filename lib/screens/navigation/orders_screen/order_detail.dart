import 'package:flutter/material.dart';
import 'package:sooshiz/utils/constants.dart';

import '../../../utils/styles.dart';

class OrderDetail extends StatefulWidget {
  final String id;

  const OrderDetail({super.key, required this.id});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  int _currentStep = 2; // Default current step

// Delivery statuses with associated messages and images
  final List<Map<String, List<String>>> _deliveryStatuses = [
    {
      'Processing': ["Process your order"]
    },
    {
      'Cooking': ["Your order is getting ready"]
    },
    {
      'Delivery': ["Your order is on its way"]
    },
    {
      'Knock Knock': ["Open your door!"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              centerTitle: true,
              pinned: true,
              title: Text(
                "Order Details",
                style: TextStyles.heading3Style,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 22.5, right: 22.5, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 17,
                            offset: Offset(5, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Crusoe300,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Order ID: ",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins",
                                            color: white,
                                          ),
                                        ),
                                        Text(
                                          "#${widget.id}",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins",
                                            color: Gray200,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.copy,
                                      color: Gray200,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                            child: Padding(
                              padding: EdgeInsets.all(26),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 85,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Avocado Maki x1",
                                              style: TextStyles.paragraph1Style,
                                            ),
                                            Text(
                                              "\$7.99",
                                              style:
                                                  TextStyles.paragraph1Style400,
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Avocado Maki x1",
                                              style: TextStyles.paragraph1Style,
                                            ),
                                            Text(
                                              "\$7.99",
                                              style:
                                                  TextStyles.paragraph1Style400,
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Avocado Maki x1",
                                              style: TextStyles.paragraph1Style,
                                            ),
                                            Text(
                                              "\$7.99",
                                              style:
                                                  TextStyles.paragraph1Style400,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        style: TextStyles.totalStyle,
                                      ),
                                      Text(
                                        "\$29.55",
                                        style: TextStyles.totalPriceStyle,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Timeline", style: TextStyles.totalPriceStyle),
                    SizedBox(
                      height: 16,
                    ),
                    Stepper(
                      currentStep: _currentStep,
                      connectorThickness: 3,
                      type: StepperType.vertical,
                      controlsBuilder: (_context, _) {
                        return Row(
                          children: <Widget>[
                            Container(
                              child: null,
                            ),
                            Container(
                              child: null,
                            ),
                          ],
                        );
                      },
                      steps: _deliveryStatuses.map((status) {
                        String title = status.keys.first;
                        List<String> messages = status.values.first;
                        return Step(
                          title: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 17,
                                  offset: Offset(
                                      5, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Tuna100,
                                        borderRadius: BorderRadius.circular(9)),
                                    child: Icon(Icons.arrow_back,color: Tuna300,),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        title,
                                        style: TextStyles.paragraph1Style400,
                                      ),
                                      Text(
                                        messages[0],
                                        style: TextStyles.paragraph2StyleGray,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          isActive:
                              _deliveryStatuses.indexOf(status) <= _currentStep,
                          state: _deliveryStatuses.indexOf(status) ==
                                  _currentStep
                              ? StepState.editing
                              : _deliveryStatuses.indexOf(status) < _currentStep
                                  ? StepState.complete
                                  : StepState.indexed,
                          content: SizedBox(),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
