import 'package:flutter/material.dart';
import "client.dart";


class ClientWidget extends StatelessWidget {
  final Client client;
  const ClientWidget({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
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
}