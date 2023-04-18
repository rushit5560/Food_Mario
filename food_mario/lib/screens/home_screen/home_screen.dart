import 'package:flutter/material.dart';
import 'package:food_mario/constants/colors.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import '../../../controller/home_screen_controller.dart';
import 'home_screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final homeScreenController  = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor2,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              DeliveryPickupButtonModule(),
              SearchBarModule(),
              ProductCategoryListViewModule(),
              const Divider(
                height: 1,
                thickness: 10,
                color: AppColors.grey200Color,
              ),
              ProductCategoryListViewModule2(),
              const Divider(
                height: 1,
                thickness: 10,
                color: AppColors.grey200Color,
              ),
              ProductCategoryListViewModule3(),
              const Divider(
                //height: 1,
                thickness: 10,
                color: AppColors.grey200Color,
              ),
              ProductCategoryListViewModule4(),
              const Divider(
                height: 1,
                thickness: 10,
                color: AppColors.grey200Color,
              ),
              ProductCategoryListViewModule5(),
              const Divider(
                height: 1,
                thickness: 10,
                color: AppColors.grey200Color,
              ),
              ProductCategoryListViewModule6(),
              const Divider(
                height: 1,
                thickness: 10,
                color: AppColors.grey200Color,
              ),
              const Divider(
                //height: 1,
                thickness: 10,
                color: AppColors.grey200Color,
              ),
              ProductCategoryListViewModule7(),
              const Divider(
                height: 1,
                thickness: 10,
                color: AppColors.grey200Color,
              ),
              FreshGroceriesModule(),
              SweetTreatsModule(),
              const Divider(
                height: 1,
                thickness: 10,
                color: AppColors.grey200Color,
              ),
              PickItUpForFreeModule(),
              LatestStoriesModule(),
              ProductCategoryListViewModule12(),
            ],
          ).commonSymmetricPadding(vertical: 20),
        ),
      ),
    );
  }
}
