// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'client.dart';

void main() {
  runApp(MaterialApp(
    home: DataWidget(),
  ));
}

class UserLogin extends StatelessWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Text("Login"),
            Expanded(child: Image.network("https://images.unsplash.com/photo-1554600740-951beab4712b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")),
            Form(child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(),
                TextFormField(),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {}, child: Text("Login")),
              ],
            )),
          ],
        ),
      ),
    );
  }
}



class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("Bienvenido a,"),
        Image.asset(
          "assets/logo.png",
          fit: BoxFit.cover,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Login")),
        OutlinedButton(onPressed: () {}, child: Text("Sign Up"))
      ],
    ));
  }
}

class DataWidget extends StatefulWidget {
  const DataWidget({super.key});

  @override
  State<DataWidget> createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget> {
  int counter = 0;
  List<Client> clients = [
    Client(name: "Juan", lastname: "Perez"),
    Client(name: "David", lastname: "Andrade"),
    Client(name: "Lucas", lastname: "Vasquez"),
  ];


  Widget ClientTemplate(client) {
    return Card(
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
          Text(client.name, style: TextStyle(fontSize: 28, color: Colors.indigo)),
          SizedBox(width: 20,),
          Text(client.lastname, style: TextStyle(fontSize: 24, color: Colors.green)),
        ]),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffe Shop"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$counter", style: TextStyle(fontSize: 32, color: Colors.indigo[800])),
            // Column(
            //   children: clients.map((client) => Text('${client.name} - ${client.lastname}',
            //     style: TextStyle(fontSize: 28, color: Colors.deepOrangeAccent),
            //   )).toList(),
            // )
            Column(
              children: clients.map((client) => ClientTemplate(client)).toList(),
            ),

          ]
        ),
      ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            counter += 1;
          });
        },
          child: Icon(Icons.add),
        ),
    );
  }
}

