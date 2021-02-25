import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sertiphy/globals.dart';
import '../controller/loginController.dart';
import '../utils/styles.dart';

class LoginPage extends StatelessWidget {
  LoginCont fx = Get.put(LoginCont());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Form(
            key: fx.formKey,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FaIcon(FontAwesomeIcons.running, size: 120,),
                Text("$app_name Login"),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: fx.uname,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SFUIDisplay'
                    ),
                    decoration: wicon("Userid", Icons.person_outline),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter userid';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.all(10),
                  child:
                      TextFormField(
                          controller: fx.pwd,
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SFUIDisplay'
                          ),
                    decoration: wicon("Password", Icons.lock_outline),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.all(10),
                  child:
                  MaterialButton(
                    onPressed:fx.submitFunction(),
                    child: Text('SIGN IN',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("New user? "),
                  FlatButton(onPressed: (){
                    Get.toNamed("/register");
                  },
                      child: Text("Register now",style: TextStyle(
                        color: Colors.blue,decoration: TextDecoration.underline
                      ),))
                ],)

              ],
            ),
          ),
        )
    );
  }
  /*login() async {
    print("Login started...");
    diox.Response response;
    diox.Dio dio = new diox.Dio();
    response = await dio.post("$serurl/auth/login",
        data: {"userid": uid.text, "password": pwd.text});
    print(response.data);
    try{
      Map data = json.decode(response.data);
      prefs.setInt("cu_type", data["usertype"]);
      prefs.setString("cu_id", data["userid"]);
      prefs.setString("cu_name", data["name"]);
      prefs.setString("cu_token", data["token"]);
      if(data["usertype"]==0){Get.toNamed("/admin/dashboard");}
    } on FormatException catch (e) {
      print('The provided string is not valid JSON');
    }
  }*/
}