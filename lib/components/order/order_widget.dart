import 'package:flutter/material.dart';
import 'package:sooshiz/model/order.dart';
import 'package:sooshiz/screens/navigation/orders_screen/order_detail.dart';
import 'package:sooshiz/utils/constants.dart';

class OrderWidget extends StatelessWidget {
  final Order order;
  const OrderWidget({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail(id : order.id)));
      },
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order ID: #${order.id}",style: TextStyle(
                        fontSize: 16,
                        color: Gray500
                    ),),
                    Text("${order.quantity} items",style: TextStyle(
                        fontSize: 12,
                        color: Gray300
                    ),),
                    Text("${order.month} ${order.date}, ${order.hour}",style: TextStyle(
                        fontSize: 12,
                        color: Gray300
                    ),),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(text: TextSpan(
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                        children: [
                          TextSpan(
                              text: "\$",
                              style: TextStyle(
                                  color: Crusoe300,)),
                          TextSpan(
                              text: order.price,
                              style: TextStyle(
                                  color: black,)),
                        ]
                    )),
                    Container(
                      height: 28,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Crusoe100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text("View Details",style: TextStyle(
                            color: Crusoe300,
                            fontSize: 12,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
