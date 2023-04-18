import 'package:flutter/material.dart';
import 'package:food_mario/constants/colors.dart';
import 'package:food_mario/constants/messages.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/app_images.dart';
import '../../../controller/authentication_screen_controllers/sign_in_screen_controller.dart';
import '../../../custom_widgets/custom_appbar.dart';
import '../../../custom_widgets/custom_submit_button.dart';
import '../../../custom_widgets/custom_textfromfiled.dart';
import '../../../utils/fileld_validator/field_validator.dart';
import '../../../utils/style/style.dart';
import '../reset_password_screen/reset_password_screen.dart';
import '../sign_up_screen/sign_up_screen.dart';
import '../verify_code_screen/verify_code_screen.dart';

class SignInScreen extends StatelessWidget {
   SignInScreen({Key? key}) : super(key: key);
final signInScreenController = Get.put(SignInScreenController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor2,
      appBar: customAppBarModule(
           text: AppMessages.signIn,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: signInScreenController.formKey,
          child: Column(
            children: [
              TextFormFiledCustom(
                prefixIcon: Image.asset(
                  AppImages.facebookImage,
                ).commonOnlyPadding(left: 10),
                fieldController: signInScreenController.loginWithFacebookTextFieldController,
                hintText: 'Login with Facebook',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 5.h),
              TextFormFiledCustom(
                prefixIcon: Image.asset(
                  AppImages.googleImage,
                ).commonOnlyPadding(left: 10),
                fieldController: signInScreenController.loginWithGoogleTextFieldController,
                hintText: 'Login with Google',
                keyboardType: TextInputType.text,
                //textAlign: TextAlign.center,
              ),
              SizedBox(height: 5.h),
              TextFormFiledCustom(
                prefixIcon: Image.asset(
                  AppImages.appleImage,
                ).commonOnlyPadding(left: 10),
                fieldController: signInScreenController.loginWithAppleTextFieldController,
                hintText: 'Login with apple',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 5.h),
              TextFormFiledCustom(
                fieldController: signInScreenController.phoneOrEmailTextFieldController,
                hintText: 'Phone or Email',
                keyboardType: TextInputType.text,
                validate: (value) => FieldValidator().validateEmail(value),
              ),
              SizedBox(height: 5.h),
              TextFormFiledCustom(
                fieldController: signInScreenController.passwordTextFieldController,
                hintText: 'Password',
                keyboardType: TextInputType.text,
                validate: (value) => FieldValidator().validateMobileNumber(value),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Get.to(()=> ResetPasswordScreen());
                      },
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
                      labelText:AppMessages.signIn,
                      onPress: ()  {
                        if (signInScreenController.formKey.currentState!.validate()) {
                          Get.to(()=>VerifyCodeScreen());
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
                    onPressed: () {
                      Get.to(()=>SignUpScreen());
                    },
                    icon: const Icon(Icons.east,color:AppColors.grey700Color),
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
