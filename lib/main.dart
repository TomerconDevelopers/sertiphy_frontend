import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './routes.dart';
import 'globals.dart';

void main() {
  runApp(
      GetMaterialApp(
          initialRoute: '/',
          getPages: routes,
          theme: new ThemeData(
              brightness: Brightness.light,
              primaryColorBrightness: Brightness.dark,
              accentColor: primcol,
              primaryColor: primcol,
              accentColorBrightness: Brightness.light
          )
      )
  );
}