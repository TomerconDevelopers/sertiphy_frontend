
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as diox;

class LoginCont extends GetxController {
  TextEditingController uname = TextEditingController();
  TextEditingController pwd = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    super.onInit();
    //debounce(username, validations, time: Duration(milliseconds: 500));
  }
  Future<bool> Function() submitFunction() {
    return () async {
      /*if (formKey.currentState.validate()){
        print('Make database call to create ${uname.text} account');
        await Future.delayed(Duration(seconds: 1), () => print('User account created'));
      }*/
      Get.toNamed("admin/dashboard");
      return true;
    };
  }
}