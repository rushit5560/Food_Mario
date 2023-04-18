import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../constants/messages.dart';
import '../../controller/account_name_edite_screen_controller.dart';
import '../../custom_widgets/custom_appbar.dart';
import '../../custom_widgets/custom_submit_button.dart';
import '../../custom_widgets/custom_textfromfiled.dart';
import '../../utils/style/style.dart';
import '../account_profile_change_screen/account_profile_change_screen.dart';

class AccountNameEditeScreen extends StatelessWidget {
   AccountNameEditeScreen({Key? key}) : super(key: key);
  final accountNameEditeScreenController = Get.put(AccountNameEditeScreenController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor2,
      appBar: customAppBarModule(
        text: '',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's your name?",
            style: TextStyleConfig.textStyle(
                textColor: AppColors.blackColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              Expanded(
                child: TextFormFiledCustom(
                  fieldController: accountNameEditeScreenController.firstNameTextFieldController,
                  hintText: AppMessages.first,
                  keyboardType: TextInputType.text,
                 textColor: AppColors.blackColor,
                 // validate: (value) => FieldValidator().validateEmail(value),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: TextFormFiledCustom(
                  fieldController: accountNameEditeScreenController.lastNameTextFieldController,
                  hintText: AppMessages.last,
                  keyboardType: TextInputType.text,
                  textColor: AppColors.blackColor,
                  // validate: (value) => FieldValidator().validateEmail(value),
                ),
              ),
            ],
          ),
          const Spacer(),
          CustomSubmitButtonModule(
              labelText: 'Next',
              onPress: () {
                 Get.to(() => const AccountProfileChangeScreen());
              },
              buttonColor: AppColors.blackColor),
        ],
      ).commonSymmetricPadding(horizontal: 15,vertical: 10),
    );
  }
}
