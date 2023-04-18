import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/enums.dart';

class OrderDetailScreenController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool selected1 = false.obs;
  RxBool selected2 = false.obs;
  RxBool selected3 = false.obs;
  RxBool selected4 = false.obs;
  var counter = 0.obs;

  increment() {
    counter.value++;
  }

  decrement() {
    counter.value--;
  }
}
