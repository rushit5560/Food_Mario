import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PaymentScreenController extends GetxController{
  RxBool isLoading = false.obs;
  RxBool selected = false.obs;
  TextEditingController fullNameTextFieldController = TextEditingController();
  TextEditingController cardNumberTextFieldController = TextEditingController();
  TextEditingController cardYearNumberTextFieldController = TextEditingController();
  TextEditingController cardCVVNumberTextFieldController = TextEditingController();
  TextEditingController zipCodeTextFieldController = TextEditingController();
}