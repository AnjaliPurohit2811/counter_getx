
import 'package:get/get.dart';

class CounterController extends GetxController{
  var Count = 0.obs;

  void increment(){
    Count++;
  }
}