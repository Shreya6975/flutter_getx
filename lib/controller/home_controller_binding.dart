import 'package:flutter_getx/pages/home_getx.dart';
import 'package:get/get.dart';

class HomeControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeGetx>(() => HomeGetx());
  }

}