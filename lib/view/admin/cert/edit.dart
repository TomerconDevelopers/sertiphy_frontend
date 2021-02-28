

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_scaffold/templates/layout/scaffold.dart';
import 'package:sertiphy/controller/templateController.dart';
import 'package:sertiphy/utils/styles.dart';

class EditTemp extends StatelessWidget {
  TempCont cont = Get.put(TempCont());
  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: Text('${Get.arguments["name"]}'),
      drawer: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings Page'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Info Page'),
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text('Library Page'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help Page'),
          ),
        ],
      ),
      endIcon: Icons.filter_list,
      endDrawer: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.filter_list),
            title: Text('Filter List'),
            subtitle: Text('Hide and show items'),
            trailing: Switch(
              value: true,
              onChanged: (val) {},
            ),
          ),
          ListTile(
            leading: Icon(Icons.image_aspect_ratio),
            title: Text('Size Settings'),
            subtitle: Text('Change size of images'),
          ),
          ListTile(
            title: Slider(
              value: 0.5,
              onChanged: (val) {},
            ),
          ),
          ListTile(
            leading: Icon(Icons.sort_by_alpha),
            title: Text('Sort List'),
            subtitle: Text('Change layout behavior'),
            trailing: Switch(
              value: false,
              onChanged: (val) {},
            ),
          ),
        ],
      ),
      trailing: Row(children: [
        InkWell(
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: rounded(Colors.blue, 10),
            child: Row(children: [
              Icon(Icons.photo_outlined, color: Colors.white,),
              Text("Add image"),

            ],),
          ),
        ),
        InkWell(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: rounded(Colors.amber[600], 10),
            child: Row(children: [
              Icon(Icons.table_view_outlined, color: Colors.white,),
              Text("Import data"),

            ],),
          ),
        ),
      ],),
      body: Center(
        child: RaisedButton.icon(
          icon: Icon(Icons.image_outlined),
          label: Text('Pick certificate background'),
          onPressed: () {
            //file picker
            cont.pickfile();
          },
        ),
      ),

    );
  }

}
