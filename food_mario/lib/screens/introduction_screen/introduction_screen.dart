import 'package:flutter/material.dart';
import 'package:food_mario/constants/messages.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../constants/app_images.dart';
import '../../constants/colors.dart';
import '../../constants/font_family.dart';
import '../../controller/introduction_screen_controller.dart';
import '../../custom_widgets/custom_submit_button.dart';
import '../../utils/style/style.dart';
import '../authentication_screen/sign_in_screen/sign_in_screen.dart';

class IntroductionScreen extends StatelessWidget {
   IntroductionScreen({Key? key}) : super(key: key);
final introductionScreenController = Get.put(IntroductionScreenController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor2,
      body:SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                   const Icon(Icons.language),
                  SizedBox(width: 2.w),
                  Obx(()=>
                     DropdownButton(
                      value: introductionScreenController.selected.value,
                      items:introductionScreenController.list.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                        onChanged: (value) {
                        introductionScreenController.getList(value);
                        },),
                  ),
                ],
              ),
              Text(AppMessages.grabNEats,
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  // fontFamily: FontFamilyText.sFProDisplayBold,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(AppMessages.orderFood,
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  // fontFamily: FontFamilyText.sFProDisplayBold,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(AppMessages.groceriesWeDeliver,
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  // fontFamily: FontFamilyText.sFProDisplayBold,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Image.asset(AppImages.pizza2Image),
              const Spacer(),
              CustomSubmitButtonModule(
                buttonColor: AppColors.grey800Color,
                  onPress: () {
                  Get.to(()=> SignInScreen());
                  },
                  labelText: AppMessages.gettingStarted,
              ),
            ],
          ),
        ),
      ).commonSymmetricPadding(horizontal: 20,vertical: 10),
    );
  }
}
