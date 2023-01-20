import 'package:flutter/material.dart';

import '../home/home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _page = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: const Text(
              "Name: user",
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: const Text("Email: User@gmail.com")),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: const Text("Cellphone: 0987654321")),
        ]),
      )),
      bottomNavigationBar: BottomNavigationBar(
          // currentIndex: _page,
          onTap: (index) {
            setState(() {
              _page = index;
            });
            Navigator.pop(context);
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context) => const Home())
            // );
          },
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Cart",
                icon: Icon(Icons.check_box_outline_blank_outlined)),
            BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
          ]),
    );
  }
}
