import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../custom_widgets/custom_submit_button.dart';
import '../../utils/style/style.dart';
import '../payment_screen/payment_screen.dart';

class AddPaymentMethodScreen extends StatelessWidget {
  const AddPaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Add a Payment method",
              style: TextStyleConfig.textStyle(
                textColor: AppColors.blackColor,
                fontSize: 14.sp,
                //fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.h),
            CustomSubmitButtonModule(
                labelText: 'Add Payment Method Now',
                onPress: () {
                  Get.to(() =>  PaymentScreen());
                },
                buttonColor: AppColors.blackColor),
            SizedBox(height: 5.h),
            Text(
              "Do it Later",
              style: TextStyleConfig.textStyle(
                textColor: AppColors.blackColor,
                fontSize: 14.sp,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ).commonSymmetricPadding(vertical: 40,horizontal: 20),
      ),
    );
  }
}
