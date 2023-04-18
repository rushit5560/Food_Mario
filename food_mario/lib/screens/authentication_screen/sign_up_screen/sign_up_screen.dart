import 'package:flutter/material.dart';
import 'package:food_mario/constants/colors.dart';
import 'package:food_mario/constants/messages.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/app_images.dart';
import '../../../controller/authentication_screen_controllers/sign_up_screen_controller.dart';
import '../../../custom_widgets/custom_appbar.dart';
import '../../../custom_widgets/custom_submit_button.dart';
import '../../../custom_widgets/custom_textfromfiled.dart';
import '../../../utils/fileld_validator/field_validator.dart';
import '../../../utils/style/style.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final signUpScreenController = Get.put(SignUpScreenController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor2,
      appBar: customAppBarModule(
        text: AppMessages.signUp,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: signUpScreenController.formKey,
          child: Column(
            children: [
              SizedBox(height: 4.h),
              TextFormFiledCustom(
                prefixIcon: Image.asset(
                  AppImages.facebookImage,
                ).commonOnlyPadding(left: 10),
                fieldController: signUpScreenController.loginWithFacebookTextFieldController,
                hintText: 'Login with Facebook',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 5.h),
              TextFormFiledCustom(
                prefixIcon: Image.asset(
                  AppImages.googleImage,
                ).commonOnlyPadding(left: 10),
                fieldController: signUpScreenController.loginWithGoogleTextFieldController,
                hintText: 'Login with Google',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 5.h),
              TextFormFiledCustom(
                prefixIcon: Image.asset(
                  AppImages.appleImage,
                ).commonOnlyPadding(left: 10),
                fieldController: signUpScreenController.loginWithAppleTextFieldController,
                hintText: 'Login with apple',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 5.h),
              TextFormFiledCustom(
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  //size: 35,
                ).commonOnlyPadding(left: 12),
                fieldController: signUpScreenController.phoneOrEmailTextFieldController,
                hintText: 'Phone or Email',
                keyboardType: TextInputType.text,
                validate: (value) => FieldValidator().validateEmailOrPassword(value),
              ),
              SizedBox(height: 5.h),
              Obx(()=>
                  TextFormFiledCustom(
                    obscureText: signUpScreenController.isPasswordHide.value,
                    prefixIcon:  IconButton(
                      onPressed: () {
                        signUpScreenController.isPasswordHide.value =
                        !signUpScreenController.isPasswordHide.value;
                      },
                      icon:  Icon(
                        signUpScreenController.isPasswordHide.value
                            ? Icons.lock_outline
                            : Icons.lock_open,
                        color: Colors.black,
                        //size: 35,
                      ),
                    ).commonOnlyPadding(left: 10),
                    fieldController: signUpScreenController.passwordTextFieldController,
                    hintText: 'Password',
                    keyboardType: TextInputType.text,
                    validate: (value) => FieldValidator().validateMobileNumber(value),

                  ),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(AppMessages.resetPassword,
                        style: TextStyleConfig.textStyle(
                            textColor: AppColors.grey400Color,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomSubmitButtonModule(
                      labelText:AppMessages.signUp2,
                      onPress: ()  async {
                        if (signUpScreenController.formKey.currentState!.validate()) {
                        }
                      },
                      buttonColor: AppColors.grey800Color,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(AppMessages.signUp,
                    style: TextStyleConfig.textStyle(
                        textColor: AppColors.grey400Color,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(width: 3.w),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.east,
                      color:AppColors.grey700Color,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Text(AppMessages.signInText,
                style: TextStyleConfig.textStyle(
                    textColor: AppColors.grey400Color,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400
                ),
              ),
            ],
          ),
        ).commonSymmetricPadding(horizontal: 30,vertical: 20),
      ),
    );
  }
}
