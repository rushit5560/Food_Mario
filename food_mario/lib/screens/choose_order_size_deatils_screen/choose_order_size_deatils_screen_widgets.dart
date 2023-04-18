import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../utils/style/style.dart';

class CustomizationModule extends StatelessWidget {
  const CustomizationModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container();
    //   ListView.builder(itemBuilder: (context, index) {
    //   return
    // },);
  }
}

class CustomizationSize extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? text3;

  const CustomizationSize({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        dense: true,
       // horizontalTitleGap: 1,
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        leading: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.blackColor,
              width: 4,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1!,
              style: TextStyleConfig.textStyle(
                textColor: AppColors.grey400Color,
                fontSize: 14.sp,
                //fontWeight: FontWeight.bold,
              ),
            ),
            //SizedBox(width: ,)
            Text(
              text2!,
              style: TextStyleConfig.textStyle(
                textColor: AppColors.grey500Color,
                fontSize: 13.sp,
                //fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text3!,
              style: TextStyleConfig.textStyle(
                textColor: AppColors.grey400Color,
                fontSize: 14.sp,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
