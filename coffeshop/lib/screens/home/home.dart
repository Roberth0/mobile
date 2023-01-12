// ignore_for_file: prefer_const_constructors, avoid_print
import 'package:coffeshop/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              "Hey There",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)
            ),
            SizedBox( height: 5,),

            Text(
              "Its a great day to grab a cup of coffe",
              style: TextStyle(),
            ),
            SizedBox( height: 25,),

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
                  borderRadius: BorderRadius.circular(5)
                ),
              )
            ),
            SizedBox( height: 25,),

            Text("Recomended For You"),
            SizedBox( height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container( width: 125, height: 150, color: Colors.amber),
                Container( width: 125, height: 150, color: Colors.blue),
                Container( width: 125, height: 150, color: Colors.pink),
              ],
            ),
            SizedBox( height: 15,),

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
            SizedBox( height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 150, height: 125, color: Colors.blueAccent),
                Container(width: 150, height: 125, color: Colors.lime),
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
      bottomNavigationBar: BottomAppBar(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {},),
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {},),
            IconButton(icon: Icon(Icons.account_circle), onPressed: () {},),
          ]
          ),
      ),
      );
  }
}
