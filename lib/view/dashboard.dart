
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:sertiphy/globals.dart';
import '../utils/styles.dart';
import '../view/bottomnav.dart';
import '../view/slider.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //bottomNavigationBar:bottomnav(),
      appBar: AppBar(
        //backgroundColor: Colors.amber,
        leading: Container(),
        elevation: 0,
        title: Row(children: [
          FaIcon(FontAwesomeIcons.running),
          SizedBox(width: 10,),
          Text("$app_name"),
        ],)),
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
                child: mySlider(),
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
                          child: Container(
                            height: 200,
                            alignment: Alignment.center,
                            //color: Colors.red,
                            child: iconbutton("Certificates",
                                Icons.article_outlined, Colors.blue),
                          ),
                        ),

                        ResponsiveGridCol(
                          xs: 12,
                          md: 6,

                          child: Container(
                            height: 200,
                            alignment: Alignment.center,
                            //color: Colors.red,
                            child: iconbutton("Profile",
                                Icons.person_outline, Colors.orange),
                          ),
                        ),
                        ResponsiveGridCol(
                          xs: 12,
                          md: 6,
                          child: Container(
                            height: 200,
                            alignment: Alignment.center,
                            //color: Colors.red,
                            child: iconbutton("Institutes",
                                Icons.account_balance_outlined, Colors.purple),
                          ),
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
          /*ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: Container(
              height: 100,
              alignment: Alignment(0, 0),
              color: Colors.green,
              child: Text("xs : 6 \r\nmd : 3"),
            ),
          ),
          ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: Container(
              height: 100,
              alignment: Alignment(0, 0),
              color: Colors.orange,
              child: Text("xs : 6 \r\nmd : 3"),
            ),
          ),
          ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: Container(
              height: 100,
              alignment: Alignment(0, 0),
              color: Colors.red,
              child: Text("xs : 6 \r\nmd : 3"),
            ),
          ),
          ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: Container(
              height: 100,
              alignment: Alignment(0, 0),
              color: Colors.blue,
              child: Text("xs : 6 \r\nmd : 3"),
            ),
          ),*/
        ])

      ),
      )
    );
  }
}
