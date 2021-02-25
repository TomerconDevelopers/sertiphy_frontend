import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sertiphy/globals.dart';
import '../controller/main_controller.dart';


class MyHomePage extends StatelessWidget {
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 350,height: 200,
              alignment: Alignment.center,
              child:Stack(children: [
                Container(
                  child: CachedNetworkImage(
                    width: 500,
                      imageUrl: "https://cdn.pixabay.com/photo/2016/11/14/03/17/yoga-1822476_960_720.jpg"
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child:Container(
                    color: Colors.white70,
                    height: 70,
                    padding: EdgeInsets.all(10),
                    child:Text(
                    "“The only way to prove you are a good sport is to lose.” – Ernie Banks.",
                        style: Theme.of(context).textTheme.headline6
                    ),),)
              ],),),
            SizedBox(height: 100,),
            Text("$app_name",style: TextStyle(fontSize: 30),),
            Text("Version 0.01a"),
            Container(
              width: 300,
              margin: EdgeInsets.all(10),
              child:
              MaterialButton(
                onPressed: (){
                  Get.toNamed("/login");
                },//since this is only a UI app
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
            )
          ],
        ),
        )
    );
  }
}