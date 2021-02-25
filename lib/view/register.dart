
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/registerController.dart';
import '../utils/formelements.dart';

class RegisterForm extends StatelessWidget {
  RegCont cont = Get.put(RegCont());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"),
      elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
          child: Container(
              //color: Colors.amber,
              width: 500,
              child:SingleChildScrollView(child:Column(children: [
                radiogroup("type", ["Individual","Organization"]),
                fitem("Name",textfield(0, "name")),
                //fitem("Date of birth",datepicker("dob", context)),
                fitem("Mail id",textfield(0, "email")),
                fitem("Phone",textfield(1, "phone")),
                fitem("Address",textfield(0, "address")),


                Container(
                  width: 300,
                  margin: EdgeInsets.all(10),
                  child:
                  MaterialButton(
                    onPressed:cont.submitFunction(),
                    child: Text('SUBMIT',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'SFUIDisplay',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Color(0xffff2d55),
                    elevation: 0,
                    minWidth: 400,
                    height: 50,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

      ],))
          ),
      )
    );
  }
}
