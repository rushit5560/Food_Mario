import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../custom_widgets/custom_appbar.dart';
import '../../custom_widgets/custom_submit_button.dart';
import '../../utils/style/style.dart';
import '../add_payment_method_screen/add_payment_method_screen.dart';

class SkipThisForLaterScreen extends StatelessWidget {
  const SkipThisForLaterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor2,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SKIP THIS FOR LATER  ",
              style: TextStyleConfig.textStyle(
                textColor: AppColors.blackColor,
                fontSize: 14.sp,
                //fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              "Select your preferred payment method",
              style: TextStyleConfig.textStyle(
                textColor: AppColors.blackColor,
                fontSize: 14.sp,
                //fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.h),
            ListTile(
              //contentPadding: const EdgeInsets.only(right: 20),
              leading: const Icon(Icons.credit_card_outlined,
                color: AppColors.blackColor,
              ),
              title:
              Text(
                "Credit or Decit Card",
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 14.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.apple,
                color: AppColors.blackColor,
              ),
              title:
              Text(
                "Apple",
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 14.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.paypal,
                color: AppColors.blackColor,
              ),
              title:
              Text(
                "Paypal",
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 14.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            CustomSubmitButtonModule(
                labelText: 'Next',
                onPress: () {
                  Get.to(() => const AddPaymentMethodScreen());
                },
                buttonColor: AppColors.blackColor),
          ],
        ).commonSymmetricPadding(vertical: 20,horizontal: 15),
      ),
    );
  }
}
