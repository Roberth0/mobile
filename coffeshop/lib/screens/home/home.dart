// ignore_for_file: prefer_const_constructors, avoid_print
import 'package:coffeshop/screens/profile/profile.dart';
import 'package:coffeshop/services/auth.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cart/cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  List<Widget> screens = [
    Home(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hey There 👋🏻",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            SizedBox(
              height: 5,
            ),

            Text(
              "Its a great day to grab a cup of coffe",
              style: TextStyle(),
            ),
            SizedBox(
              height: 25,
            ),

            TextField(
                decoration: InputDecoration(
              hintText: "Search your specific coffe type",
              prefixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(5)),
            )),
            SizedBox(
              height: 25,
            ),

            Text("Recomended For You"),
            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 120, height: 210, color: Colors.amber),
                Container(width: 120, height: 210, color: Colors.blue),
                Container(width: 120, height: 210, color: Colors.pink),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            Text("Categories"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: () {}, child: Text("All Item")),
                OutlinedButton(onPressed: () {}, child: Text("Coffe")),
                OutlinedButton(onPressed: () {}, child: Text("Non-Coffe")),
                OutlinedButton(onPressed: () {}, child: Text("Dessert")),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 165, height: 171, color: Colors.blueAccent),
                Container(width: 165, height: 171, color: Colors.lime),
              ],
            )

            // ElevatedButton(
            //     onPressed: () async {
            //       await AuthService().signOut();
            //     },
            //     child: Text("Log Out")
            // )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     onTap: (index) {
      //       print(index);
      //     },
      //     items: const [
      //       BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
      //       BottomNavigationBarItem(
      //           label: "Cart",
      //           icon: Icon(Icons.shopping_cart_checkout_outlined)),
      //       BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
      //     ]

      //     // child: Row(
      //     //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     //   children: [
      //     //     IconButton(icon: Icon(Icons.home), onPressed: () {},),
      //     //     IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {},),
      //     //     IconButton(icon: Icon(Icons.account_circle), onPressed: () {},),
      //     //   ]
      //     //   ),
      //     ),
      bottomNavigationBar: CurvedNavigationBar(
          index: _page,
          onTap: (index) {
            setState(() {
              _page = index;
            });
            print(index);
            print(screens[index]);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => screens[index])
            );
          },
          height: 60,
          color: Colors.orange,
          animationCurve: Curves.easeInOut,
          backgroundColor: Colors.white,
          animationDuration: Duration(milliseconds: 300),
          items: const [
            Icon(Icons.home, size: 25, color: Colors.white),
            Icon(
              Icons.shopping_cart_checkout,
              size: 25,
              color: Colors.white,
            ),
            Icon(Icons.person, size: 25, color: Colors.white),
          ]),
    );
  }
}
