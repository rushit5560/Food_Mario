import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreenController extends GetxController{
  RxBool isLoading = false.obs;
  RxBool isSuccessStatus = false.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController loginWithFacebookTextFieldController = TextEditingController();
  TextEditingController loginWithGoogleTextFieldController = TextEditingController();
  TextEditingController loginWithAppleTextFieldController = TextEditingController();
  TextEditingController phoneOrEmailTextFieldController = TextEditingController();
  TextEditingController passwordTextFieldController = TextEditingController();
}