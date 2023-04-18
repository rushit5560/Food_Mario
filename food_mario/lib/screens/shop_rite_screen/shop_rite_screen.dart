import 'package:flutter/material.dart';
import 'package:food_mario/constants/colors.dart';
import 'package:food_mario/constants/messages.dart';
import 'package:food_mario/screens/shop_rite_screen/shop_rite_screen_widgets.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import '../../../controller/shop_rite_screen_controller.dart';
import '../../../custom_widgets/custom_appbar.dart';


class ShopRiteScreen extends StatelessWidget {
   ShopRiteScreen({Key? key}) : super(key: key);
   final shopRiteScreenController  = Get.put(ShopRiteScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor2,
      appBar: customAppBarModule(text: AppMessages.shopRite),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ShopRiteSearchBarModule(),
            FeaturedAndCategoriesModule(),
            FruitsAndVegetablesModule(),
            BeveragesModule(),
            FrozenFoodsModule(),
            PantryAndGroceriesModule1(),
            PantryAndGroceriesModule2(),
            MeatSeafoodAndPlantBasedModule(),
            CheeseModule(),
          ],
        ).commonSymmetricPadding(vertical: 10),
      ),
    );
  }
}
