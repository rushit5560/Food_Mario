import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/colors.dart';
import '../../../constants/messages.dart';
import '../../../controller/account_settings_screen_controller.dart';
import '../../../custom_widgets/custom_appbar.dart';
import '../../../utils/style/style.dart';
import 'account_screen_widgets.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);
  final accountSettingsScreenController = Get.put(AccountScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor2,
      appBar: customAppBarModule(
        text: '',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppMessages.accountSettings,
            style: TextStyleConfig.textStyle(
                textColor: AppColors.blackColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 6.h),
          AccountSettingsModule(),
          FavoriteListModule(),
          MoreSavedPlacesModule(),
        ],
      ).commonSymmetricPadding(horizontal: 25, vertical: 10),
    );
  }
}
