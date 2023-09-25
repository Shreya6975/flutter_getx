import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DependencyInjectionController extends GetxController {
  void increment() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    int counter = (sp.getInt('counter') ?? 0) + 1;
    debugPrint("It's count $counter times");
    await sp.setInt('counter', counter);
  }
}
