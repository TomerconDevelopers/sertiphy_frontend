
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:sertiphy/utils/styles.dart';

import '../../globals.dart';
import '../slider.dart';

class AdminDash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar:bottomnav(),
        appBar: AppBar(
          //backgroundColor: Colors.amber,
            leading: Container(),
            elevation: 0,

            title: Row(children: [
              FaIcon(FontAwesomeIcons.addressBook),
              SizedBox(width: 10,),
              Text("$app_name"),
            ],),
          actions: [
            InkWell(child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: rounded(Colors.blueGrey, 10),
              child:
              Row(children: [
                Text("Account"),Icon(Icons.keyboard_arrow_down)
              ],),),)
          ],
        ),
        body: Container(child:
        SingleChildScrollView(
            child:
            /*Column(
          children: [
            carousal()
            iconbutton("Sportfolio"),
            iconbutton("Sports feed"),
            iconbutton("Achievements"),
            iconbutton("Organizations")
          ],
        )*/
            ResponsiveGridRow(
              //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveGridCol(
                    lg: 6,
                    child: Container(
                      height: 400,
                      alignment: Alignment(0, 0),
                      //color: Colors.purple,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          decoration: rounded(Colors.white, 10),
                          child:
                          Column(children: [
                            ListTile(leading: Icon(Icons.account_balance_outlined),
                            title: Text("G-Tech computer education"),
                              subtitle: Text("Kozhikode, KL"),
                              trailing: Container(
                                padding: EdgeInsets.all(5),
                                child: Text("Active", style: TextStyle(color: Colors.white),),
                              decoration: rounded(Colors.green, 10),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                              Container(
                                width: 150,
                                decoration: rounded(Colors.grey[100], 10),
                                padding: EdgeInsets.all(10),
                                child:
                                Column(children: [
                                  Text("Certificates"),
                                  Divider(),
                                  Text("5/100", style: TextStyle(fontSize: 24, color: Colors.blue),),
                                  Text("Used")
                                ],),),
                              Container(
                                width: 150,
                                decoration: rounded(Colors.grey[100], 10),
                                padding: EdgeInsets.all(10),
                                child:
                                Column(children: [
                                  Text("Templates"),
                                  Divider(),
                                  Text("2/10", style: TextStyle(fontSize: 24, color: Colors.blue),),
                                  Text("Used")
                                ],),),
                              Container(
                                width: 150,
                                decoration: rounded(Colors.grey[100], 10),
                                padding: EdgeInsets.all(10),
                                child:
                                Column(children: [
                                  Text("User data"),
                                  Divider(),
                                  Text("1/10", style: TextStyle(fontSize: 24, color: Colors.blue),),
                                  Text("Used")
                                ],),)
                            ],),
                            Container(
                              margin: EdgeInsets.all(10),
                              decoration: rounded(Colors.amber, 10),
                              child: ListTile(
                              title:Text("Silver plan"),
                              leading: Icon(Icons.trending_up, size: 60, color: Colors.white,),
                              subtitle: Text("1023 certificates remaining"),
                              trailing: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: rounded(Colors.white, 10),
                              child:Text("UPGRADE")
                              ),
                            ),),
                            ListTile(leading: Icon(Icons.person_outline),
                            title: Text("Jone doe"),
                              subtitle: Text("Institute administrator"),
                            )

                          ],),)
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 6,
                    child: Container(
                        height: 400,
                        alignment: Alignment.center,
                        //color: Colors.grey,
                        child: Center(child:ResponsiveGridRow(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ResponsiveGridCol(
                                xs: 12,
                                md: 6,
                                child: InkWell(child:Container(
                                  height: 200,
                                  alignment: Alignment.center,
                                  //color: Colors.red,
                                  child: iconbutton("Certificates",
                                      Icons.article_outlined, Colors.blue),
                                ),
                                  onTap: (){
                                    Get.toNamed("admin/certificates");
                                  },
                                )
                              ),

                              ResponsiveGridCol(
                                xs: 12,
                                md: 6,

                                child: InkWell(child:Container(
                                  height: 200,
                                  alignment: Alignment.center,
                                  //color: Colors.red,
                                  child: iconbutton("User data",
                                      Icons.person_outline, Colors.orange),
                                ),
                                  onTap: (){
                                  Get.toNamed("admin/userdata");
                                  },
                                )
                              ),
                              ResponsiveGridCol(
                                xs: 12,
                                md: 6,
                                child: InkWell(child:Container(
                                  height: 200,
                                  alignment: Alignment.center,
                                  //color: Colors.red,
                                  child: iconbutton("Templates",
                                      Icons.account_balance_outlined, Colors.purple),
                                ),
                                  onTap: (){
                                    Get.toNamed("admin/templates");
                                  },
                                )
                              ),
                              ResponsiveGridCol(
                                xs: 12,
                                md: 6,
                                child: Container(
                                  height: 200,
                                  alignment: Alignment.center,
                                  //color: Colors.red,
                                  child: iconbutton("Settings",
                                      Icons.settings_outlined,
                                      Colors.pink
                                  ),
                                ),
                              ),

                            ])
                        )
                    ),
                  ),
            ResponsiveGridCol(
                lg: 12,
                child: Container(
                  //color: Colors.amber,
                  child:Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(Icons.article_outlined),SizedBox(width: 10,),
                        Text("Certificates (4)"),
                      ],
                    ),
                  ))
            ),
                  ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: Container(
              //height: 100,
              alignment: Alignment(0, 0),
              //color: Colors.green,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: rounded(Colors.white, 10),
                child: Column(
                  children: [
                    Image.network("https://cdn.pixabay.com/photo/2021/02/13/19/32/vaccination-6012612_960_720.jpg",height: 200,
                      fit: BoxFit.cover,),
                    //CachedNetworkImage(imageUrl: "https://cdn.pixabay.com/photo/2021/02/13/19/32/vaccination-6012612_960_720.jpg"),
                    Text("Graphic design course", style: TextStyle(fontSize: 18),),
                    Text("Created on 12 jul, 3 PM", style: TextStyle(color: Colors.blueGrey[300],fontSize: 14),)
                  ],
                ),
              ),
            ),
          ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      //height: 100,
                      alignment: Alignment(0, 0),
                      //color: Colors.green,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: rounded(Colors.white, 10),
                        child: Column(
                          children: [
                            Image.network("https://cdn.pixabay.com/photo/2012/04/24/21/41/certificate-40983_960_720.png",height: 200,
                              fit: BoxFit.cover,),
                            //CachedNetworkImage(imageUrl: "https://cdn.pixabay.com/photo/2012/04/24/21/41/certificate-40983_960_720.png"),
                            Text("PHP", style: TextStyle(fontSize: 18),),
                            Text("Created on 12 jul, 3 PM", style: TextStyle(color: Colors.blueGrey[300],fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      //height: 100,
                      alignment: Alignment(0, 0),
                      //color: Colors.green,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: rounded(Colors.white, 10),
                        child: Column(
                          children: [
                            Image.network("https://cdn.pixabay.com/photo/2013/07/12/19/24/diploma-154736_960_720.png",height: 200,
                            fit: BoxFit.cover,),
                            //NetworkImage(imageUrl: "https://cdn.pixabay.com/photo/2013/07/12/19/24/diploma-154736_960_720.png"),
                            Text("Web design", style: TextStyle(fontSize: 18),),
                            Text("Created on 12 jul, 3 PM", style: TextStyle(color: Colors.blueGrey[300],fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      //height: 100,
                      alignment: Alignment(0, 0),
                      //color: Colors.green,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: rounded(Colors.white, 10),
                        child: Column(
                          children: [
                            Stack(children: [
                              Image.network("https://cdn.pixabay.com/photo/2021/02/13/19/32/vaccination-6012612_960_720.jpg",height: 200,
                                fit: BoxFit.cover,),
                              Container(color: Colors.white54,height: 200,),
                              Container(
                                padding: EdgeInsets.all(2),
                                color: Colors.green,
                                  child:Text("Active", style: TextStyle(color: Colors.white),)),
                            ],),
                            //CachedNetworkImage(imageUrl: "https://cdn.pixabay.com/photo/2021/02/13/19/32/vaccination-6012612_960_720.jpg"),
                            Text("Multimedia crash", style: TextStyle(fontSize: 18),),
                            Text("Created on 12 jul, 3 PM", style: TextStyle(color: Colors.blueGrey[300],fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ])

        ),
        )
    );
  }
}
