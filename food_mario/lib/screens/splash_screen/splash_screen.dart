import 'package:flutter/material.dart';
import 'package:food_mario/constants/app_images.dart';
import 'package:food_mario/constants/colors.dart';
import 'package:food_mario/constants/font_family.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controller/splash_screen_controller.dart';
import '../../utils/style/style.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
   final splashScreenController = Get.put(SplashScreencontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightOrangeColor,
      body:SafeArea(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text('GrabnEats',
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  // fontFamily: FontFamilyText.sFProDisplayBold,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
               Text('Online Order',
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  // fontFamily: FontFamilyText.sFProDisplayBold,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3.h),
              Image.asset(AppImages.pizza2Image),
            ],
          ),
        ),
      ).commonSymmetricPadding(horizontal: 20,vertical: 150),
    );
  }
}
