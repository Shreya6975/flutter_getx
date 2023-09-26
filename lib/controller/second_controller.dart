import 'package:get/get.dart';

import '../pages/home_getx.dart';
import 'first_controller.dart';

class SecondController extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstController>(() => FirstController());
    Get.lazyPut<HomeGetx>(() => HomeGetx());
  }
}
