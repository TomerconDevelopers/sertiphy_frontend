
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import '../globals.dart';

class OtpVerify extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,

      body: Center(child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Icon(Icons.phonelink, size: 100,)
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Phone Number Verification',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
                child: RichText(
                  text: TextSpan(
                      text: "Enter the code sent to ",
                      children: [
                        TextSpan(
                            text: "+91 023443556",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ],
                      style: TextStyle(color: Colors.black54, fontSize: 15)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                //color: Colors.amber,
                width: 300,

                padding: const EdgeInsets.all(0.0),
                child: PinPut(
                  fieldsCount: 5,
                  selectedFieldDecoration: selected,
                  disabledDecoration: _pinPutDecoration,
                  submittedFieldDecoration: _pinPutDecoration,
                  followingFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: primcol,
                    ),
                  ),
                )
              ),

              
              SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Didn't receive the code? ",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                    children: [
                      TextSpan(
                          text: " RESEND",
                          //recognizer: (){},
                          style: TextStyle(
                              color: Color(0xFF91D3B3),
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ]),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: 300,
                margin:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
                child: ButtonTheme(
                  height: 50,
                  child: FlatButton(
                    onPressed: () {
                      Get.toNamed("/dashboard");
                    },
                    child: Center(
                        child: Text(
                          "VERIFY".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green.shade200,
                          offset: Offset(1, -2),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.green.shade200,
                          offset: Offset(-1, 2),
                          blurRadius: 5)
                    ]),
              ),
              SizedBox(
                height: 16,
              ),

            ],
      ),
      )
    );
  }
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: primcol),
      borderRadius: BorderRadius.circular(15.0),
    );
  }
  BoxDecoration get selected {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(color: primcol),
      borderRadius: BorderRadius.circular(15.0),
    );
  }
}
