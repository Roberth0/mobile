import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _page = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: const Center(child: Text("Cart")),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        animationDuration: const Duration(microseconds: 300),
        onTap: (index) {
          setState(() {
            _page = index;
          });
          Navigator.pop(context);
        },
        backgroundColor: Colors.blueAccent,
        color: Colors.lightBlueAccent,
        items: const [
          Icon(Icons.home, size: 35, color: Colors.white),
          Icon(Icons.shopping_cart_checkout),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
