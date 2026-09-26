import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 25),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Card(
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: .spaceBetween,
          children: [
            SizedBox(
              height: 350,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                clipBehavior: .antiAlias,
                child: Image.asset(shoe.imagePath),
              ),
            ),
            Text(shoe.description, style: TextStyle(color: Colors.grey[600])),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .start,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        shoe.name,
                        style: TextStyle(fontWeight: .bold, fontSize: 22),
                      ),
                      Text(
                        "\$${shoe.price}",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
