import 'package:e_commerce_app/components/shoe_tile.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const new({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text("Search", style: TextStyle(color: Colors.grey)),
              Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),

        //message
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "everyone flies.. someflies longer than others",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(fontWeight: .bold, fontSize: 24),
              ),
              Text(
                "See all",
                style: TextStyle(fontWeight: .bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: .horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                name: 'Air Jordan',
                price: '\$240',
                imagePath: "assets/images/nike-air-max-plus.jpg",
                description: 'cool shoe',
              );
              return ShoeTile(shoe: shoe);
            },
          ),
        ),
      ],
    );
  }
}
