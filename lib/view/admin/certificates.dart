
import 'package:flutter/material.dart';
import 'package:sertiphy/utils/styles.dart';

class Certificates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Certificates"),
        actions: [
          InkWell(child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: rounded(Colors.amber[700], 10),
            child:
            Row(children: [
              Text("Add new"),Icon(Icons.add)
            ],),),)
        ],
      ),
      body: Center(child:
      Text("No certificates found, Tap add to create your first certificate"),),
    );
  }
}
