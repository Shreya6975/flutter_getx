import 'package:flutter_getx/controller/first_controller.dart';
import 'package:get/get.dart';

class AppController implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FirstController>(() => FirstController());
  }

}