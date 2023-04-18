import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';

import '../../constants/colors.dart';
import '../../custom_widgets/custom_appbar.dart';
import 'choose_order_size_deatils_screen_widgets.dart';

class ChooseOrderSizeDetailsScreen extends StatelessWidget {
  const ChooseOrderSizeDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor2,
      appBar: customAppBarModule(
        text: 'Customization',
      ),
      body: SafeArea(
          child: CustomizationModule()
              .commonSymmetricPadding(vertical: 10, horizontal: 10)),
    );
  }
}
