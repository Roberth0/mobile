import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:coffeshop/services/dabase.dart';
import 'package:provider/provider.dart';
import 'package:coffeshop/screens/home/product_carousel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Accessing the stream of documents with the provider
    return StreamProvider<QuerySnapshot?>.value(
      value: DatabaseServices().products,
      initialData: null,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hey There 👋🏻",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Its a great day to grab a cup of coffe",
              style: TextStyle(),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
                decoration: InputDecoration(
              hintText: "Search your specific coffe type",
              prefixIcon: const Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(5)),
            )),
            const SizedBox(
              height: 25,
            ),
            const Text("Recomended For You"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProductCarousel(),
                Container(width: 120, height: 210, color: Colors.blue),
                Container(width: 120, height: 210, color: Colors.pink),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Categories"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: () {}, child: Text("All Item")),
                OutlinedButton(onPressed: () {}, child: Text("Coffe")),
                OutlinedButton(onPressed: () {}, child: Text("Non-Coffe")),
                OutlinedButton(onPressed: () {}, child: Text("Dessert")),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 165, height: 171, color: Colors.blueAccent),
                Container(width: 165, height: 171, color: Colors.lime),
              ],
            )
          ],
        ),
      ),
    );
  }
}
