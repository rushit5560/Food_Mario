import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';

// PreferredSizeWidget customAppBar({
//   required String titleText,
//   required bool leadingShow,
//   Widget? leadingIcon,
//   Function()? leadingOnTap,
//   required bool actionShow,
//   Widget? actionIcon,
//   Function()? actionOnTap,
//   TextStyle? style,
// }) {
//   return AppBar(
//     centerTitle: true,
//     backgroundColor: AppColors.whiteColor2,
//     leading: leadingShow
//         ? IconButton(
//             onPressed: leadingOnTap ?? (){},
//             icon: leadingIcon!,
//           )
//         : null,
//     title: Text(
//       titleText,
//       maxLines: 1,
//       overflow: TextOverflow.ellipsis,
//       style: style,
//     ),
//     actions: [
//       actionShow
//           ? IconButton(
//               onPressed: actionOnTap ?? (){},
//               icon: actionIcon!,
//             )
//           : Container(),
//     ],
//   );
// }
PreferredSizeWidget customAppBarModule(
    {required String text,
      Color iconColor = AppColors.blackColor,
      String textFontFamily = "SFProDisplayRegular",
      Color textColor = AppColors.blackColor,
      Color backGroundColor = AppColors.whiteColor2}) {
  return AppBar(
    backgroundColor: backGroundColor,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
            Get.back();
          },
          icon: Icon(
            Icons.west_outlined,
            color: iconColor,
          ),
        );
      },
    ),
    centerTitle: true,
    elevation: 0,
    title: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontFamily: textFontFamily,
        fontSize: 20.sp,
      ),
    ),
  );
}

