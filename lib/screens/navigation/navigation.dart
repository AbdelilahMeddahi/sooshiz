import 'package:flutter/material.dart';
import 'package:sooshiz/screens/navigation/favourites_screen/favourites_screen.dart';
import 'package:sooshiz/screens/navigation/home_screen/home_screen.dart';
import 'package:sooshiz/screens/navigation/orders_screen/orders_screen.dart';
import 'package:sooshiz/utils/constants.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();

}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const FavouritesScreen(),
    const OrdersScreen(),
    Container(
      child: const Text("4"),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // font
        selectedFontSize: 10,
        unselectedFontSize: 10,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Crusoe300,
        unselectedItemColor: Gray300,
        backgroundColor: Colors.white,
        elevation: 8,
        iconSize: 24,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home.png",),),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/heart.png",),),
            label: "My List",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/orders.png"),),
            label: "My orders",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/user.png"),),
            label: "Profile",
          ),

        ],
      ),
    );
  }
}
