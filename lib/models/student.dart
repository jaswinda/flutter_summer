import 'package:get/get.dart';

class Count extends GetxController{
  var count = 0.obs;
 
   increment() {
    count = count + 1;
  }
 
   decrement() {
    count = count - 1;
  }

  
}