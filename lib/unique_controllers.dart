import 'package:get/get.dart';

class UniqueController extends GetxController{
  var count =  0;

  void increment(){
    count++;
    update(['Counter']);
  }
  void decrement(){
    count--;
    update(['Counter']);
  }
}