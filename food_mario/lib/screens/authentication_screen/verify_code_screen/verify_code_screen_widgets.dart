import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:food_mario/constants/messages.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/colors.dart';
import '../../../constants/font_family.dart';
import '../../../controller/authentication_screen_controllers/verify_code_screen_controller.dart';
import '../../../custom_widgets/custom_textfromfiled.dart';
import '../../../utils/fileld_validator/field_validator.dart';
import '../../../utils/style/style.dart';
import '../../index_screen/index_screen.dart';

class VerifyPhoneNumberModule extends StatelessWidget {
  VerifyPhoneNumberModule({Key? key}) : super(key: key);
  final verifyCodeScreenController = Get.find<VerifyCodeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              flex: 4,
              child: CountryCodePicker(
                //dialogSize: Size.fromWidth(Get.width*100),
                onChanged: print,
                // initialSelection: 'IT',
                // favorite: ['+39','FR'],
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: true,
              ),
            ),
            Expanded(
              flex: 6,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                validator: (value) =>
                    FieldValidator().validateMobileNumber(value!),
                decoration: InputDecoration(
                  hintText: "Enter Phone Number",
                  hintStyle: TextStyleConfig.textStyle(
                    textColor: AppColors.blackColor,
                    // fontFamily: FontFamilyText.sFProDisplayBold,
                    fontSize: 14.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        const Divider(
          height: 1,
        ),
      ],
    );
  }
}

class VerifyCodeAndResendOtpModule extends StatelessWidget {
  VerifyCodeAndResendOtpModule({Key? key}) : super(key: key);
  final verifyCodeScreenController = Get.find<VerifyCodeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 10.w,
              child: codeVerifyTextFormFiledCustom(
                fieldController:
                    verifyCodeScreenController.firstDigitController,
                hintText: '0',
                fontSize: 18.sp,
                textColor: AppColors.blackColor,
                keyboardType: TextInputType.number,
                textStyle: TextStyle(fontSize: 18.sp),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
            SizedBox(
              width: 10.w,
              child: codeVerifyTextFormFiledCustom(
                fieldController:
                    verifyCodeScreenController.secondDigitController,
                hintText: '0',
                fontSize: 18.sp,
                textColor: AppColors.blackColor,
                keyboardType: TextInputType.number,
                textStyle: TextStyle(fontSize: 18.sp),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  } else if (value.isEmpty) {
                    FocusScope.of(context).previousFocus();
                  }
                },
              ),
            ),
            SizedBox(
              width: 10.w,
              child: codeVerifyTextFormFiledCustom(
                fieldController:
                    verifyCodeScreenController.thirdDigitController,
                hintText: '0',
                fontSize: 18.sp,
                keyboardType: TextInputType.number,
                textColor: AppColors.blackColor,
                textStyle: TextStyle(fontSize: 18.sp),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  } else if (value.length == 0) {
                    FocusScope.of(context).previousFocus();
                  }
                },
              ),
            ),
            SizedBox(
              width: 10.w,
              child: codeVerifyTextFormFiledCustom(
                fieldController:
                    verifyCodeScreenController.fourthDigitController,
                hintText: '0',
                fontSize: 18.sp,
                keyboardType: TextInputType.number,
                textColor: AppColors.blackColor,
                textStyle: TextStyle(fontSize: 18.sp),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  } else if (value.length == 0) {
                    FocusScope.of(context).previousFocus();
                  }
                },
              ),
            ),
            SizedBox(
              width: 10.w,
              child: codeVerifyTextFormFiledCustom(
                fieldController:
                    verifyCodeScreenController.fifthDigitController,
                hintText: '0',
                fontSize: 18.sp,
                keyboardType: TextInputType.number,
                textColor: AppColors.blackColor,
                textStyle: TextStyle(fontSize: 18.sp),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  } else if (value.length == 0) {
                    FocusScope.of(context).previousFocus();
                  }
                },
              ),
            ),
            SizedBox(
              width: 10.w,
              child: codeVerifyTextFormFiledCustom(
                fieldController:
                    verifyCodeScreenController.sixthDigitController,
                hintText: '0',
                fontSize: 18.sp,
                textStyle: TextStyle(fontSize: 18.sp),
                keyboardType: TextInputType.number,
                textColor: AppColors.blackColor,
                onChanged: (value) {
                  if (value.isEmpty) {
                    FocusScope.of(context).previousFocus();
                  }
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 2.h),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.timer_outlined),
            ),
            SizedBox(width: 1.5.w),
            Text(
              AppMessages.resendOtp,
              style: TextStyleConfig.textStyle(
                textColor: AppColors.grey500Color,
                // fontFamily: FontFamilyText.sFProDisplayBold,
                fontSize: 14.sp,
                //fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {
                Get.to(() => IndexScreen());
              },
              icon: const Icon(Icons.east),
            ),
          ],
        ),
      ],
    );
  }
}
