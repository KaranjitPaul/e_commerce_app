import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Max Muse",
      price: "299",
      imagePath: "assets/images/air-max-muse.jpg",
      description: "die for this..",
    ),
    Shoe(
      name: "Jordan 6 Retro",
      price: "359",
      imagePath: "assets/images/jordan-6-retro.avif",
      description: "Be a retro..",
    ),
    Shoe(
      name: "Jordan 5 Retro",
      price: "359",
      imagePath: "assets/images/jordan-air-5-retro.avif",
      description: "Be a retro..",
    ),
    Shoe(
      name: "Nike Air Max Plus",
      price: "409",
      imagePath: "assets/images/nike-air-max-plus.avif",
      description: "Only for Winners..",
    ),
    Shoe(
      name: "Nike Pegasus",
      price: "279",
      imagePath: "assets/images/Nike-Pegasus-42.jpg",
      description: "We Fly..",
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
