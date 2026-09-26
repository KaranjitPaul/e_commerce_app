import 'package:e_commerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text(
              "My Cart",
              style: TextStyle(fontWeight: .bold, fontSize: 24),
            ),
            const SizedBox(height: 20),
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              //get individual shoe 

              //return the cart item
            },))
          ],
        ),
      ),
    );
  }
}
