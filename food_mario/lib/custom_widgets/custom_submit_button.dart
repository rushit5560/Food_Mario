import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';
import '../utils/style/style.dart';

// ignore: must_be_immutable
class CustomButtonModule extends StatelessWidget {
  Function() onPress;
  String labelText;
  Color buttonColor;
  Color textColor;

  double? labelSize;
  CustomButtonModule({
    Key? key,
    required this.onPress,
    required this.labelText,
    this.buttonColor = AppColors.blackColor,
    this.textColor = AppColors.whiteColor,

    this.labelSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // height: 50,
        width: Get.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
             ),
          ),
          onPressed: onPress,
          child: Text(
            labelText,
            style: TextStyleConfig.textStyle(
              textColor: textColor,
              fontSize: labelSize ?? 13.sp,
            ),
          ).commonSymmetricPadding(vertical: 10),
        ),
      ),
    );
  }
}


class CustomSubmitButtonModule extends StatelessWidget {
  Function() onPress;
  String labelText;
  Color buttonColor;
  Color textColor;

  double? labelSize;
  CustomSubmitButtonModule({
    Key? key,
    required this.onPress,
    required this.labelText,
    this.buttonColor = AppColors.blackColor,
    this.textColor = AppColors.whiteColor,

    this.labelSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // height: 50,
        width: Get.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPress,
          child: Text(
            labelText,
            style: TextStyleConfig.textStyle(
              textColor: textColor,
              fontSize: labelSize ?? 14.sp,
            ),
          ).commonSymmetricPadding(vertical: 15),
        ),
      ),
    );
  }
}