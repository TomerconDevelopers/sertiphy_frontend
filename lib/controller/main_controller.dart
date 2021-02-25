import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/user.dart';
import 'package:statusbar/statusbar.dart';

import '../globals.dart';

class Controller extends GetxController {
  SharedPreferences prefs;
  @override
  void onInit() { // called immediately after the widget is allocated memory
    //fetchApi();
    startfunc();
    super.onInit();
  }
  startfunc() async {
    if(!GetPlatform.isWeb)StatusBar.color(primcol);
    prefs = await SharedPreferences.getInstance();
    cu_type = prefs.getInt("cu_type");
    if(cu_type!=null)if(!cu_type.isNaN){
      cu_id = prefs.getString("cu_id");
      cu_name = prefs.getString("cu_name");
      cu_token = prefs.getString("cu_token");
      if(cu_type==0){
        Get.toNamed("/admin/dashboard");
      }
    }
  }

  @override
  void onReady() { // called after the widget is rendered on screen
    //showIntroDialog();
    super.onReady();
  }

  @override
  void onClose() { // called just before the Controller is deleted from memory
    //closeStream();
    super.onClose();
  }

  var user = User(name: "Aachman").obs; // declare just like any other variable

  void changeName() => user.value.name = "Garg"; // use .value and access any variables of the class

}