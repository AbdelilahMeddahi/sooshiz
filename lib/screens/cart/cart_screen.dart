import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sooshiz/components/buttons/main_button.dart';
import 'package:sooshiz/utils/styles.dart';

import '../../utils/constants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22.5, right: 22.5, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30,
                child: Stack(
                  children: [
                    InkWell(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Center(
                      child: Text(
                        "Cart",
                        style: TextStyles.heading3Style,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: (Column(
                  children: [
                    Image.asset("assets/images/empty_cart.png"),
                    Text(
                      "Your cart is empty\nAdd items to get started",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        color: Gray300,),
                    ),
                  ],
                )),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ("Order"),
                          style: TextStyles.paragraph1Style,
                        ),
                        Text(
                          "----",
                          style: TextStyles.paragraph1Style,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          ("Discount"),
                          style: TextStyles.paragraph1Style,
                        ),
                        Text(
                          "----",
                          style: TextStyles.paragraph1Style,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      height: 1,
                      color: Gray300,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          ("Total"),
                          style: TextStyles.totalStyle,
                        ),
                        Text(
                          "----",
                          style: TextStyles.totalStyle,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(height: 16,),
                    MainButton(text: "Place Order", textColor: Gray300, backgroundColor: Gray200, onTap: (){}),
                    SizedBox(height: 16,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
