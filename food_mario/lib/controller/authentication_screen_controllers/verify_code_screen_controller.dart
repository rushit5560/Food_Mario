import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodeScreenController extends GetxController{
  RxBool isLoading = false.obs;
  RxBool isSuccessStatus = false.obs;
  RxBool isPasswordHide = false.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController firstDigitController = TextEditingController();
  TextEditingController secondDigitController = TextEditingController();
  TextEditingController thirdDigitController = TextEditingController();
  TextEditingController fourthDigitController = TextEditingController();
  TextEditingController fifthDigitController = TextEditingController();
  TextEditingController sixthDigitController = TextEditingController();
  TextEditingController phoneOrEmailTextFieldController = TextEditingController();

  }
