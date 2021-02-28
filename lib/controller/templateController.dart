
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class TempCont extends GetxController {


  @override
  void onInit() {
    super.onInit();
    //debounce(username, validations, time: Duration(milliseconds: 500));
  }
  pickfile() async {
    FilePickerResult result = await FilePicker.platform.pickFiles();

    if(result != null) {
      File file = File(result.files.single.path);
    } else {
      // User canceled the picker
    }
  }
}
