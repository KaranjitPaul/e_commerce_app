import 'package:e_commerce_app/components/bottom_nav_bar.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 70),
                  Container(
                    height: 160,
                    padding: EdgeInsets.all(40),
                    child: Image.asset(
                      "assets/images/logo.png",
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text(
                      "H O M E",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text(
                      "A B O U T",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  "L O G O U T",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
