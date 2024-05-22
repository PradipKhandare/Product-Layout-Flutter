import 'package:flutter/material.dart';
import 'package:product_layout_app/rating_box.dart';

class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String image;

  const ProductBox(
      {super.key,
      required this.name,
      required this.description,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 130,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/$image"),
            Expanded(child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.bold ),
                  ),
                  Text(description),
                  Text("Price: $price"),
                  const RatingBox(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
