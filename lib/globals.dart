import 'package:flutter/material.dart';

String app_name = "Sertiphy";
String serurl = "http://10.0.2.2:8072";
//String serurl = "http://localhost:8072";//WEB
int cu_type;//0-admin,1-organization,2-user

String cu_id,cu_name,cu_token;
Color primcol = Colors.blueGrey[600];//Color(0xff3C8DBC);//Color(0xffff2d55);
//fc4b6c
Color primcol_light = Color(0xff3C8DBC);//Color(0xfffc4b6c);
bool darkmode=false;
Map<String, String> headers = {"Content-type": "application/json"};