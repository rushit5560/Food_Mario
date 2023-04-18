import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../constants/messages.dart';
import '../../controller/payment_screen_controller.dart';
import '../../custom_widgets/custom_submit_button.dart';
import '../../custom_widgets/custom_textfromfiled.dart';
import '../../utils/style/style.dart';

class PaymentScreen extends StatelessWidget {
   PaymentScreen({Key? key}) : super(key: key);
  final paymentScreenController = Get.put(PaymentScreenController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Center(
                    child: CircleAvatar(
                      backgroundColor: AppColors.grey700Color,
                      radius: 45,
                      child: Icon(
                        Icons.person,
                        color: AppColors.whiteColor2,
                        size: 70,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  TextFiledCustom(
                    fieldController: paymentScreenController.fullNameTextFieldController,
                    hintText: AppMessages.lastName,
                    keyboardType: TextInputType.text,
                    textColor: AppColors.grey500Color,
                    // validate: (value) => FieldValidator().validateEmail(value),
                  ),
                  SizedBox(height: 2.h),
                  TextFiledCustom(
                    fieldController: paymentScreenController.cardNumberTextFieldController,
                    hintText: AppMessages.cardNumber,
                    keyboardType: TextInputType.text,
                    textColor: AppColors.grey500Color,
                    suffixIcon: const Icon(Icons.credit_card_outlined,
                      color: AppColors.grey400Color,
                    ),
                    // validate: (value) => FieldValidator().validateEmail(value),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Expanded(
                        child: TextFiledCustom(
                          fieldController: paymentScreenController.cardYearNumberTextFieldController,
                          hintText: AppMessages.cardMonthYear,
                          keyboardType: TextInputType.text,
                          textColor: AppColors.grey500Color,
                          // validate: (value) => FieldValidator().validateEmail(value),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      Expanded(
                        child: TextFiledCustom(
                          fieldController: paymentScreenController.cardCVVNumberTextFieldController,
                          hintText: AppMessages.cardCvv,
                          keyboardType: TextInputType.text,
                          textColor: AppColors.grey500Color,
                          suffixIcon: const Icon(Icons.error,
                            size: 20,
                            color: AppColors.grey400Color,
                          ),
                          // validate: (value) => FieldValidator().validateEmail(value),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  TextFiledCustom(
                    fieldController: paymentScreenController.zipCodeTextFieldController,
                    hintText: AppMessages.zipCode,
                    keyboardType: TextInputType.text,
                    textColor: AppColors.grey500Color,
                    // validate: (value) => FieldValidator().validateEmail(value),
                  ),
                  SizedBox(height: 3.h),
                  CustomSubmitButtonModule(
                      labelText: 'Confirm Payment',
                      onPress: () {
                        // Get.to(() => const AccountProfileChangeScreen());
                      },
                      buttonColor: AppColors.blackColor),
                  SizedBox(height: 1.h),
                  Text(
                    "you verify that this info is correct",
                    style: TextStyleConfig.textStyle(
                      textColor: AppColors.blackColor,
                      fontSize: 12.sp,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ).commonSymmetricPadding(vertical: 40,horizontal: 15))),
    );
  }
}
