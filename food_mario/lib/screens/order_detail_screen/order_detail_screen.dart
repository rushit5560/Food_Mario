import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../constants/app_images.dart';
import '../../constants/colors.dart';
import '../../controller/order_detail_screen_controller.dart';
import '../../custom_widgets/custom_submit_button.dart';
import '../../utils/style/style.dart';
import '../choose_order_size_deatils_screen/choose_order_size_deatils_screen.dart';

class OrderDetailScreen extends StatelessWidget {
  OrderDetailScreen({Key? key}) : super(key: key);
  final orderDetailScreenController = Get.put(OrderDetailScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                  ),
                  Text(
                    "Details",
                    style: TextStyleConfig.textStyle(
                      textColor: AppColors.blackColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  )
                ],
              ),
              SizedBox(height: 3.h),
              Text(
                "Pizza with Mushrooms",
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Image.asset(
                AppImages.pizza2Image,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 3.h),
              Text(
                "Choose the size",
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  fontSize: 16.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Obx(
                          () => InkWell(
                        onTap: () {
                          orderDetailScreenController.isLoading(true);

                          orderDetailScreenController.selected1.value =
                          !orderDetailScreenController.selected1.value;
                          orderDetailScreenController.isLoading(false);
                          Get.to(() => const ChooseOrderSizeDetailsScreen());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 7, right: 7),
                          height: 35,
                          decoration: BoxDecoration(
                              color: orderDetailScreenController.selected1.value
                                  ? AppColors.whiteColor2
                                  : AppColors.blackColor,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: AppColors.grey400Color,
                                )
                              ]),
                          child: Center(
                            child: Text(
                              '8 inch',
                              style: TextStyleConfig.textStyle(
                                textColor: orderDetailScreenController.selected1.value
                                    ? AppColors.grey500Color
                                    : AppColors.whiteColor2,
                                fontSize: 14.sp,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(width: 0.5.w),
                  Expanded(
                    child: Obx(
                          () => InkWell(
                        onTap: () {
                          orderDetailScreenController.isLoading(true);

                          orderDetailScreenController.selected2.value =
                          !orderDetailScreenController.selected2.value;
                          orderDetailScreenController.isLoading(false);
                          Get.to(() => const ChooseOrderSizeDetailsScreen());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 7, right: 7),
                          height: 35,
                          decoration: BoxDecoration(
                              color: orderDetailScreenController.selected2.value
                                  ? AppColors.whiteColor2
                                  : AppColors.blackColor,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: AppColors.grey400Color,
                                )
                              ]),
                          child: Center(
                            child: Text(
                              '10 inch',
                              style: TextStyleConfig.textStyle(
                                textColor: orderDetailScreenController.selected2.value
                                    ? AppColors.grey500Color
                                    : AppColors.whiteColor2,
                                fontSize: 14.sp,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Obx(
                          () => InkWell(
                        onTap: () {
                          orderDetailScreenController.isLoading(true);
                          orderDetailScreenController.selected3.value =
                          !orderDetailScreenController.selected3.value;
                          orderDetailScreenController.isLoading(false);
                          Get.to(() => const ChooseOrderSizeDetailsScreen());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 7, right: 7),
                          height: 35,
                          decoration: BoxDecoration(
                              color: orderDetailScreenController.selected3.value
                                  ? AppColors.whiteColor2
                                  : AppColors.blackColor,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: AppColors.grey400Color,
                                )
                              ]),
                          child: Center(
                            child: Text(
                              '12 inch',
                              style: TextStyleConfig.textStyle(
                                textColor: orderDetailScreenController.selected3.value
                                    ? AppColors.grey500Color
                                    : AppColors.whiteColor2,
                                fontSize: 14.sp,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Obx(
                          () => InkWell(
                        onTap: () {
                          orderDetailScreenController.isLoading(true);
                          orderDetailScreenController.selected4.value =
                          !orderDetailScreenController.selected4.value;
                          orderDetailScreenController.isLoading(false);
                          Get.to(() => const ChooseOrderSizeDetailsScreen());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 7, right: 7),
                          height: 35,
                          decoration: BoxDecoration(
                              color: orderDetailScreenController.selected4.value
                                  ? AppColors.whiteColor2
                                  : AppColors.blackColor,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: AppColors.grey400Color,
                                ),
                              ]),
                          child: Center(
                            child: Text(
                              '14 inch',
                              style: TextStyleConfig.textStyle(
                                textColor: orderDetailScreenController.selected4.value
                                    ? AppColors.grey500Color
                                    : AppColors.whiteColor2,
                                fontSize: 14.sp,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ).commonSymmetricPadding(vertical: 20),
              Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                height: 40,
                decoration: const BoxDecoration(
                  color: AppColors.grey300Color,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () => orderDetailScreenController.decrement(),
                      child: const Icon(Icons.remove),
                    ),
                    Obx(
                          () => Text(
                        orderDetailScreenController.counter.toString(),
                        style: TextStyleConfig.textStyle(
                          textColor: AppColors.blackColor,
                          fontSize: 14.sp,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => orderDetailScreenController.increment(),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ).commonSymmetricPadding(vertical: 10),
              const Spacer(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyleConfig.textStyle(
                          textColor: AppColors.grey500Color,
                          fontSize: 13.sp,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        '\$ 12.00',
                        style: TextStyleConfig.textStyle(
                          textColor: AppColors.greenColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 35.w),
                  Expanded(
                    child: CustomSubmitButtonModule(
                      labelText: 'Continue',
                      onPress: () {},
                      buttonColor: AppColors.grey900Color,
                    ),
                  ),
                ],
              )
            ],
          ).commonSymmetricPadding(vertical: 10,horizontal: 10),
        ),
    );
  }
}
