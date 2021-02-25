import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

InputDecoration wicon(String label,IconData icn)=>InputDecoration(
    border: new OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        const Radius.circular(10.0),
      ),
    ),
    filled: true,
    fillColor: Colors.grey[100],
    focusedBorder: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
        borderSide: BorderSide.none
    ),
    enabledBorder: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
        borderSide: BorderSide.none
    ),
    errorBorder: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
        borderSide: BorderSide.none
    ),
    disabledBorder: InputBorder.none,
    contentPadding: EdgeInsets.zero,
    labelText: '$label',
    prefixIcon: Icon(icn),
    /*suffixIcon: InkWell(child: Icon(Icons.visibility),
    onTap: (){print("vis");},
    ),*/
    labelStyle: TextStyle(
        fontSize: 15
    )
);
BoxDecoration rounded(Color bgcol,double r)=>BoxDecoration(
    color: bgcol,
    borderRadius: BorderRadius.all(Radius.circular(r))
);
divider()=>Divider(color: Colors.grey[400],height: 0,);
void showtoast(String text, Color col) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: col,
      textColor: Colors.white,
      fontSize: 16.0
  );
}
Widget iconbutton(String txt,var icn,Color clr)=>
    Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: rounded(Colors.grey[200], 10),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(icn, size: 60, color: clr,),
        Text("$txt")
      ],),
    );