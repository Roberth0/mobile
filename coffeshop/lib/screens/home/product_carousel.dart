// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffeshop/screens/home/product.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({super.key});

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<QuerySnapshot?>(context);


    List<Product>? productList() {
      return products?.docs.map((e) => Product(
        name: e.get('name'), 
        price: e.get('price'), 
        imgPath: "images/coffe.png",)).toList();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: productList()!.map((e) => Container(child: e)).toList(),
    );
  }
}
