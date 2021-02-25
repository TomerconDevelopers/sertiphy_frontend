import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as diox;

class FEC extends GetxController {
  Map FDATA = {}.obs;

  @override
  void onInit() {
    super.onInit();
    //debounce(username, validations, time: Duration(milliseconds: 500));
  }
  forgroupchanged(String key,var val){
    FDATA[key] = val;
    print(FDATA);
  }
}