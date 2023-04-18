import 'package:flutter/material.dart';
import 'package:food_mario/constants/messages.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/colors.dart';
import '../../../controller/account_settings_screen_controller.dart';
import '../../../utils/style/style.dart';
import '../account_name_edite_screen/account_name_edite_screen.dart';

class AccountSettingsModule extends StatelessWidget {
  AccountSettingsModule({Key? key}) : super(key: key);
  final accountSettingsScreenController = Get.find<AccountScreenController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.grey700Color,
          radius: 27,
          child: Icon(
            Icons.person,
            color: AppColors.whiteColor2,
          ),
        ),
        SizedBox(width: 5.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Get.to(()=>  AccountNameEditeScreen());
              },
              child: Text(
                'Mario Lebrun',
                style: TextStyleConfig.textStyle(
                    textColor: AppColors.blackColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 1.h),
            Text(
              '+1 (845)834 - 56789',
              style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}

class FavoriteListModule extends StatelessWidget {
  FavoriteListModule({Key? key}) : super(key: key);
  final accountSettingsScreenController = Get.find<AccountScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppMessages.favorites,
          style: TextStyleConfig.textStyle(
              textColor: AppColors.grey400Color,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(right: 20),
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: GestureDetector(
            child: const Icon(
              Icons.home,
              color: AppColors.blackColor,
            ),
          ),
          title: GestureDetector(
            child: Text(
              AppMessages.homeAddress,
              style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(right: 20),
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: GestureDetector(
            child: const Icon(
              Icons.access_time_outlined,
              color: AppColors.blackColor,
            ),
          ),
          title: GestureDetector(
            child: Text(
              AppMessages.ratings,
              style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    ).commonSymmetricPadding(vertical: 20);
  }
}

class MoreSavedPlacesModule extends StatelessWidget {
  MoreSavedPlacesModule({Key? key}) : super(key: key);
  final accountSettingsScreenController = Get.find<AccountScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppMessages.moreSavedPlaces,
          style: TextStyleConfig.textStyle(
              textColor: AppColors.lightOrangeColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 3.h),
        ListTile(
          contentPadding: const EdgeInsets.only(right: 20),
          //minVerticalPadding: 10,
          //minLeadingWidth: 10,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: GestureDetector(
            child: const Icon(
              Icons.privacy_tip,
              color: AppColors.blackColor,
            ),
          ),
          title: GestureDetector(
            child: Text(
              AppMessages.moreSavedPlacesText1,
              style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ).commonOnlyPadding(bottom: 6),
          ),
          subtitle: Text(
            AppMessages.moreSavedPlacesText2,
            style: TextStyleConfig.textStyle(
                textColor: AppColors.blackColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: 3.h),
        ListTile(
          contentPadding: const EdgeInsets.only(right: 20),
          minVerticalPadding: 10,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: GestureDetector(
            child: const Icon(
              Icons.access_time_outlined,
              color: AppColors.blackColor,
            ),
          ),
          title: GestureDetector(
            child: Text(
              AppMessages.moreSavedPlacesText3,
              style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ).commonOnlyPadding(bottom: 6),
          ),
          subtitle: Text(
            AppMessages.moreSavedPlacesText4,
            style: TextStyleConfig.textStyle(
                textColor: AppColors.blackColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: 3.h),
        ListTile(
          contentPadding: const EdgeInsets.only(right: 20),
          minVerticalPadding: 10,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: GestureDetector(
            child: const Icon(
              Icons.logout,
              color: AppColors.blackColor,
            ),
          ),
          title: GestureDetector(
            child: Text(
              AppMessages.moreSavedPlacesText5,
              style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ).commonOnlyPadding(bottom: 6),
          ),
        ),
      ],
    ).commonSymmetricPadding(vertical: 20);
  }
}
