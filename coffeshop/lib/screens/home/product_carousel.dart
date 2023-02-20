// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({super.key});

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<QuerySnapshot?>(context);
    if (products != null) {
      print('working');
      products.docs.map((e) => print(e.data()));
      // products.docs.forEach((element) {
      //   print(element.data());
      // });
    }
    // products?.docs.map((doc) {
    //   print(doc.data);
    // });
    return Container();
  }
}
