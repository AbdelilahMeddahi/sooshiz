import 'package:flutter/material.dart';
import 'package:sooshiz/components/order/order_widget.dart';
import 'package:sooshiz/model/order.dart';

class OrderList extends StatelessWidget {
  final List<Order> orderList;
  const OrderList({Key? key, required this.orderList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,right: 16.0,),
      child: SizedBox(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: orderList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                bottom: index == orderList.length - 1 ? 0 : 16,
              ),
              child: OrderWidget(
                order: orderList[index],
              )
            );
          },
        ),
      ),
    );
  }
}
