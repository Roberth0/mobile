import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

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
          children: [
            Container(
              decoration: BoxDecoration(
              color: const Color.fromARGB(118, 156, 68, 0),
              borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Image.asset("images/coffe.png"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        
                      // Add button
                      IconButton(
                        iconSize: 24,
                        onPressed: () {},
                        icon: const Icon(Icons.add_circle_outline, color: Colors.black),
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

            const SizedBox(height: 10,),
            const Text("Frapucchino"),
            const Text("\$1.50")
          ],
        )
    );
  }
}
