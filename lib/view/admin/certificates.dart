
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:sertiphy/utils/styles.dart';
List cert = ["Graphic design","PHP crash course"];
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
      /*ListView.separated(

      itemBuilder: (context,index){
        return Text("grd");
    }, separatorBuilder: (context,index){
        return Divider();
    }, itemCount: cert.length),*/
      ResponsiveGridList(
          desiredItemWidth: 300,
          minSpacing: 10,
          children: cert.map((i) {
            return InkWell(child:Container(
              //height: 200,
              width: 300,
              margin: EdgeInsets.all(10),
              decoration: rounded(Colors.white, 10),
              child: Column(
                children: [
                  Stack(children: [
                    Image.network("https://cdn.pixabay.com/photo/2021/02/13/19/32/vaccination-6012612_960_720.jpg",


                      fit: BoxFit.fill,),
                    Container(color: Colors.white54,width: 300,),
                    Container(
                        padding: EdgeInsets.all(2),
                        color: Colors.green,
                        child:Text("Active", style: TextStyle(color: Colors.white),)),
                  ],),
                  //CachedNetworkImage(imageUrl: "https://cdn.pixabay.com/photo/2021/02/13/19/32/vaccination-6012612_960_720.jpg"),
                  Text("$i", style: TextStyle(fontSize: 18),),
                  Text("Created on 12 jul, 3 PM", style: TextStyle(color: Colors.blueGrey[300],fontSize: 14),)
                ],
              ),
            ),
              onTap: (){
              Get.toNamed("/admin/cert/view",arguments: {"name":i});
              },
            );
          }).toList()
      )
    )
    );
  }
}
