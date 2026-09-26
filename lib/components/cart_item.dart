import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from cart
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(
          widget.shoe.name,
          style: TextStyle(fontWeight: .w600, fontSize: 17),
        ),
        subtitle: Text(
          "\$${widget.shoe.price}",
          style: TextStyle(color: Colors.grey[600], fontWeight: .bold),
        ),
        trailing: IconButton(
          onPressed: removeFromCart,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
