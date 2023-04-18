import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ShopRiteScreenController extends GetxController{
  RxBool isLoading = false.obs;
  RxBool selected = false.obs;
  TextEditingController searchTextFieldController = TextEditingController();
}