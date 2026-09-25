import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  void Function(int)? onTap;
  int currentIndex;
  BottomNavBar({super.key, required this.onTap, required this.currentIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => widget.onTap!(value),
      currentIndex: widget.currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(size: 33),
      elevation: 0,
      backgroundColor: Colors.transparent,
      selectedFontSize: 15,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Shop"),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_rounded),
          label: "Cart",
        ),
      ],
    );
  }
}
