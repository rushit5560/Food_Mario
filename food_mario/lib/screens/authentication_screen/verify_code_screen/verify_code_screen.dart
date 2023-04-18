import 'package:flutter/material.dart';
import 'package:food_mario/constants/colors.dart';
import 'package:food_mario/screens/authentication_screen/verify_code_screen/verify_code_screen_widgets.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/font_family.dart';
import '../../../constants/messages.dart';
import '../../../controller/authentication_screen_controllers/verify_code_screen_controller.dart';
import '../../../custom_widgets/custom_appbar.dart';
import '../../../utils/style/style.dart';

class VerifyCodeScreen extends StatelessWidget {
   VerifyCodeScreen({Key? key}) : super(key: key);
   final verifyCodeScreenController = Get.put(VerifyCodeScreenController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor2,
      appBar: customAppBarModule(
        text: '',
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(AppMessages.verifyCodeText1,
            style: TextStyleConfig.textStyle(
              textColor: AppColors.blackColor,
              // fontFamily: FontFamilyText.sFProDisplayBold,
              fontSize: 16.sp,
              //fontWeight: FontWeight.bold,
            ),
          ),
          VerifyPhoneNumberModule(),
          SizedBox(height: 12.h),
          VerifyCodeAndResendOtpModule(),
          const Spacer(),
           Text(AppMessages.verifyCodeText2,
             style: TextStyleConfig.textStyle(
               textColor: AppColors.grey500Color,
              //  fontFamily: FontFamilyText.sFProDisplayBold,
               fontSize: 16.sp,
               //fontWeight: FontWeight.bold,
             ),
           ),
        ],
      ).commonSymmetricPadding(vertical: 10,horizontal: 30),
    );
  }
}
