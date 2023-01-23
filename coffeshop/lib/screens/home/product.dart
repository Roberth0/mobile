import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 120,
          height: 210,
          // color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(200, 156, 68, 0),
                  borderRadius: BorderRadius.circular(15)
                ),
                padding: EdgeInsets.all(25),
                child: Image.asset("images/coffe.png")
              ),

              Text("Frapucchino"),
              Text("\$1.50")
            ],
          )
        ),
      ),
    );
  }
}
