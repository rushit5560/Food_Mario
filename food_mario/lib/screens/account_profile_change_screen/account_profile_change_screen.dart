import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../custom_widgets/custom_appbar.dart';
import '../../custom_widgets/custom_submit_button.dart';
import '../../utils/style/style.dart';
import '../skip_this_for_later_screen/skip_this_for_later_screen.dart';

class AccountProfileChangeScreen extends StatelessWidget {
  const AccountProfileChangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor2,
      appBar: customAppBarModule(
        text: '',
      ),
      body: Column(
        children:  [
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
          SizedBox(height: 6.h),
          Text(
            "hello kajgutkhyhk uerthurtjnertikjm rjkhwrjkhtw4ut  wejtge5to6iktojk,jwfoierjgigjrikwdjwoiefjrk iqejhquifjj ejhfwuig8riegj",
            style: TextStyleConfig.textStyle(
              textColor: AppColors.blackColor,
              fontSize: 12.sp,
              //fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          CustomSubmitButtonModule(
              labelText: 'Next',
              onPress: () {
                Get.to(() => const SkipThisForLaterScreen());
              },
              buttonColor: AppColors.blackColor)
          ,
        ],
      ).commonSymmetricPadding(vertical: 10,horizontal: 10),
    );
  }
}
