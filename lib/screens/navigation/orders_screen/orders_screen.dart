import 'package:flutter/material.dart';
import 'package:sooshiz/components/order/order_list.dart';
import 'package:sooshiz/model/order.dart';
import 'package:sooshiz/utils/constants.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 110,
            floating: true,
            pinned: true,
            snap: false,
            elevation: 2,
            titleSpacing: 0,
            backgroundColor: white,
            title: Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 16.0, top: 4),
              child: Text(
                "My Orders",
                style: TextStyle(
                    color: Gray500, fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            bottom: AppBar(
              elevation: 0,
              titleSpacing: 0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 8, bottom: 8),
                child: SizedBox(
                  height: 48,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 48,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Gray100,
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                color: Gray300,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Search Order",
                                style: TextStyle(
                                  color: Gray300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Gray100),
                        child: const Icon(Icons.date_range),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //the list of the menu
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Pending",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                const SizedBox(
                  height: 16,
                ),
                OrderList(orderList: pendingOrdersList),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Delivered",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                const SizedBox(
                  height: 16,
                ),
                OrderList(orderList: ordersList),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
