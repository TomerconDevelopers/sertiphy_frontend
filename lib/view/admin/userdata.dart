
import 'package:flutter/material.dart';
import 'package:sertiphy/utils/styles.dart';

class UserData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User data"),
      actions: [
        InkWell(child: Container(
          decoration: rounded(Colors.white, 10),
          child:
          Row(children: [
            Text("Add new"),Icon(Icons.add)
          ],),),)
      ],
      ),
      body: Center(child:
        Text("No user data"),),
    );
  }
}
