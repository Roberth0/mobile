import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final String name;
  final double price;
  final String imgPath;

  const Product({
    super.key,
    required this.imgPath,
    required this.name,
    required this.price,
  });

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        height: 210,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(118, 156, 68, 0),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.asset(widget.imgPath),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Add button
                        IconButton(
                          iconSize: 24,
                          onPressed: () {},
                          icon: const Icon(Icons.add_circle_outline,
                              color: Colors.black),
                          splashRadius: 28,
                        ),

                        // Delete button
                        IconButton(
                          iconSize: 24,
                          onPressed: () {},
                          icon: const Icon(Icons.remove_circle_outline),
                          splashRadius: 28,
                        ),
                      ],
                    )
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Text(widget.name,textAlign: TextAlign.center),
            Text(widget.price.toString())
          ],
        ));
  }
}
