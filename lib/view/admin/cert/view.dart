import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sertiphy/controller/templateController.dart';
import 'package:sertiphy/globals.dart';
import 'package:sertiphy/utils/styles.dart';

class CertView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Container(
        child:
        Column(children: [
          Image.network("https://cdn.pixabay.com/photo/2021/02/13/19/32/vaccination-6012612_960_720.jpg",
            fit: BoxFit.cover,height: 200,width: double.infinity,),
          ListTile(
            leading: Icon(Icons.article_outlined, color: primcol,),
            title: Text("${Get.arguments["name"]}"),
            subtitle: Row(
              children: [
              Text("Template: template1",style: TextStyle(color: Colors.blue),),
              Expanded(child: Container()),
              Text("Created on: 12 JUL 2019")
            ],),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
               InkWell(child: Container(
                 padding: EdgeInsets.all(10),
                 decoration: rounded(Colors.green, 5),
                 child: Row(children: [
                   Text("GENERATE", style: TextStyle(color: Colors.white),),
                   Icon(Icons.play_arrow_outlined, color: Colors.white,)
                 ],),
               ),onTap: (){

               },),
                SizedBox(width: 10,),
                InkWell(child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: rounded(primcol, 5),
                  child: Row(children: [
                    Text("EDIT TEMPLATE", style: TextStyle(color: Colors.white),),
                    Icon(Icons.edit_outlined, color: Colors.white,)
                  ],),
                ),onTap: (){
                    Get.toNamed("/admin/cert/edit",arguments: {"name":Get.arguments["name"]});
                },)
              ],
            ),
          ),
          Divider()

        ],)
        ,
      ),
    ),);
  }
}
