import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/app_images.dart';
import '../../../constants/colors.dart';
import '../../../constants/messages.dart';
import '../../../controller/home_screen_controller.dart';
import '../../../custom_widgets/custom_submit_button.dart';
import '../../../custom_widgets/custom_textfromfiled.dart';
import '../../../utils/style/style.dart';
import '../shop_rite_screen/shop_rite_screen.dart';

class DeliveryPickupButtonModule extends StatelessWidget {
  DeliveryPickupButtonModule({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomButtonModule(
              labelText: 'Delivery',
              onPress: () {
                Get.to(() => ShopRiteScreen());
                // ignore: unrelated_type_equality_checks
                // if(homeScreenController.deliveryOption == DeliveryOption.selected){
                //  Get.to(()=> ShopRiteScreen());
                // }
              },
              buttonColor: AppColors.blackColor),
        ),
        SizedBox(width: 2.w),
        Expanded(
          child: CustomButtonModule(
            labelText: 'Pickup',
            onPress: () {},
            buttonColor: AppColors.blackColor,
          ),
        ),
      ],
    ).commonOnlyPadding(left: 30, right: 30, bottom: 10);
  }
}

class SearchBarModule extends StatelessWidget {
  SearchBarModule({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBarTextFormFiledCustom(
          fieldController: homeScreenController.searchTextFieldController,
          hintText: AppMessages.searchbarText,
          fillColor: AppColors.grey200Color,
          textColor: AppColors.grey500Color,
          keyboardType: TextInputType.text,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.grey500Color,
            size: 20,
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: '10918 New York ',
                style: TextStyleConfig.textStyle(
                  textColor: AppColors.blackColor,
                  // fontFamily: FontFamilyText.sFProDisplayRegular,
                  fontSize: 14.sp,
                ),
              ),
              const WidgetSpan(
                child: Icon(Icons.location_on),
              ),
            ],
          ),
        ).commonOnlyPadding(top: 5),
      ],
    ).commonSymmetricPadding(horizontal: 10, vertical: 5);
  }
}

class ProductCategoryListViewModule extends StatelessWidget {
  ProductCategoryListViewModule({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, i) {
          return InkWell(
            child: Container(
              width: 120,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.whiteColor2,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(blurRadius: 3, offset: Offset(-0, -0)
                      // color:AppColors.grey400Color,
                      )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 7,
                    child: Image.asset(
                      //fit: BoxFit.fitHeight,
                      AppImages.bottleImage,
                      // height: 90,
                    ),
                  ),
                  // SizedBox(height: 1.5.h),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Text(
                        // maxLines: 1,
                        textAlign: TextAlign.center,
                        'Champagne',
                        style: TextStyleConfig.textStyle(
                          // fontFamily: FontFamilyText.sFProDisplaySemibold,
                          textColor: AppColors.grey600Color,
                          //fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ).commonSymmetricPadding(vertical: 10);
  }
}

class ProductCategoryListViewModule2 extends StatelessWidget {
  ProductCategoryListViewModule2({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppImages.backgroundImage, fit: BoxFit.fill),
            Text(
              'Scents Restaurant',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
            Text(
              '\$0.35 Delivery Fee 20-35 min',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.grey500Color,
                //fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            )
          ],
        ).commonOnlyPadding(bottom: 10);
      },
    ).commonSymmetricPadding(horizontal: 10, vertical: 10);
  }
}

class ProductCategoryListViewModule3 extends StatelessWidget {
  ProductCategoryListViewModule3({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            width: Get.width * 0.85,
            margin: const EdgeInsets.only(left: 10, right: 5),
            decoration: BoxDecoration(
              color: AppColors.whiteColor2,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.indigoColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Order from these restaurants and save',
                          style: TextStyleConfig.textStyle(
                            // fontFamily: FontFamilyText.sFProDisplaySemibold,
                            //textColor: AppColors.grey500Color,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ShopRiteScreen());
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 40, right: 50),
                            height: 27,
                            //width: 25,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor2,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Browse offer'),
                                Icon(
                                  Icons.east_outlined,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ).commonSymmetricPadding(horizontal: 15, vertical: 25),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                        height: 300,
                        AppImages.cake2Image,
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ],
            ),
          );
        },
      ).commonSymmetricPadding(vertical: 6),
    );
  }
}

class ProductCategoryListViewModule4 extends StatelessWidget {
  ProductCategoryListViewModule4({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppImages.backgroundImage, fit: BoxFit.fill),
            Text(
              'Scents Restaurant',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
            Text(
              '\$0.35 Delivery Fee 20-35 min',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.grey500Color,
                //fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            )
          ],
        ).commonOnlyPadding(bottom: 10);
      },
    ).commonSymmetricPadding(horizontal: 10, vertical: 10);
  }
}

class ProductCategoryListViewModule5 extends StatelessWidget {
  ProductCategoryListViewModule5({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular near you',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            InkWell(
              child: Text(
                'see all',
                style: TextStyleConfig.textStyle(
                  // fontFamily: FontFamilyText.sFProDisplaySemibold,
                  textColor: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp,
                ),
              ),
            ),
          ],
        ).commonSymmetricPadding(horizontal: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(AppImages.backgroundImage, fit: BoxFit.fill),
                Text(
                  'Scents Restaurant',
                  style: TextStyleConfig.textStyle(
                    // fontFamily: FontFamilyText.sFProDisplaySemibold,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  '\$0.35 Delivery Fee 20-35 min',
                  style: TextStyleConfig.textStyle(
                    // fontFamily: FontFamilyText.sFProDisplaySemibold,
                    textColor: AppColors.grey500Color,
                    //fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                )
              ],
            ).commonOnlyPadding(bottom: 10);
          },
        ).commonSymmetricPadding(horizontal: 10, vertical: 10),
      ],
    );
  }
}

class ProductCategoryListViewModule6 extends StatelessWidget {
  ProductCategoryListViewModule6({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.backgroundImage),
              )),
              child: Obx(
                () => InkWell(
                  onTap: () {
                    if (homeScreenController.favorite
                        .contains(index.toString())) {
                      homeScreenController.favorite.remove(index.toString());
                    } else {
                      homeScreenController.favorite.add(index.toString());
                    }
                    //homeScreenController.selectedFavorite.value = !homeScreenController.selectedFavorite.value;
                  },
                  child: Icon(
                    homeScreenController.favorite.contains(index.toString())
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color:
                        homeScreenController.favorite.contains(index.toString())
                            ? AppColors.redColor
                            : AppColors.whiteColor2,
                  ).commonOnlyPadding(left: 300, bottom: 80),
                ),
              ),
            ),
            Text(
              'Scents Restaurant',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
            Text(
              '\$0.35 Delivery Fee 20-35 min',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.grey500Color,
                //fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            )
          ],
        ).commonOnlyPadding(bottom: 10);
      },
    ).commonSymmetricPadding(horizontal: 10, vertical: 10);
  }
}

class ProductCategoryListViewModule7 extends StatelessWidget {
  ProductCategoryListViewModule7({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.backgroundImage),
              )),
              child: Obx(
                () => InkWell(
                  onTap: () {
                    if (homeScreenController.favorite
                        .contains(index.toString())) {
                      homeScreenController.favorite.remove(index.toString());
                    } else {
                      homeScreenController.favorite.add(index.toString());
                    }
                    //homeScreenController.selectedFavorite.value = !homeScreenController.selectedFavorite.value;
                  },
                  child: Icon(
                    homeScreenController.favorite.contains(index.toString())
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color:
                        homeScreenController.favorite.contains(index.toString())
                            ? AppColors.redColor
                            : AppColors.whiteColor2,
                  ).commonOnlyPadding(left: 300, bottom: 80),
                ),
              ),
            ),
            Text(
              'Scents Restaurant',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
            Text(
              '\$0.35 Delivery Fee 20-35 min',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.grey500Color,
                //fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            )
          ],
        ).commonOnlyPadding(bottom: 10);
      },
    ).commonSymmetricPadding(horizontal: 10, vertical: 10);
  }
}

class FreshGroceriesModule extends StatelessWidget {
  FreshGroceriesModule({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Fresh groceries',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            InkWell(
              child: Text(
                'see all',
                style: TextStyleConfig.textStyle(
                  // fontFamily: FontFamilyText.sFProDisplaySemibold,
                  textColor: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp,
                ),
              ),
            ),
          ],
        ).commonOnlyPadding(left: 10, right: 10),
        SizedBox(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                //padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                width: 100,
                decoration: const BoxDecoration(
                 // color: Colors.red,
                    //borderRadius: BorderRadius.circular(30),
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppImages.foodImage,
                      fit: BoxFit.fitHeight,
                      height: 120,
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "Organic Pineapple",
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      '\$9.00',
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.grey500Color,
                        //fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        ListTile(
          leading: Text(
            'ASDA',
            style: TextStyleConfig.textStyle(
              // fontFamily: FontFamilyText.sFProDisplayBold,
              textColor: AppColors.green400Color,
              fontWeight: FontWeight.bold,
              fontSize: 13.sp,
            ),
          ),
          title: Text(
            'View more on Asda Brighton Marina',
            style: TextStyleConfig.textStyle(
              // fontFamily: FontFamilyText.sFProDisplaySemibold,
              textColor: AppColors.blackColor,
              //fontWeight: FontWeight.w500,
              fontSize: 13.sp,
            ),
          ),
          trailing: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.navigate_next,
              color: AppColors.blackColor,
            ),
          ),
        )
      ],
    ).commonSymmetricPadding(vertical: 10);
  }
}

class SweetTreatsModule extends StatelessWidget {
  SweetTreatsModule({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sweet treats',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
          ],
        ).commonOnlyPadding(left: 10, right: 10),
        SizedBox(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                //padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                width: 100,
                decoration: const BoxDecoration(
                  //color: Colors.red,
                    //borderRadius: BorderRadius.circular(30),
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppImages.foodImage,
                      fit: BoxFit.fitHeight,
                      height: 120,
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "Organic Pineapple",
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      '\$9.00',
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.grey500Color,
                        //fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        ListTile(
          leading: Text(
            'ASDA',
            style: TextStyleConfig.textStyle(
              // fontFamily: FontFamilyText.sFProDisplayBold,
              textColor: AppColors.green400Color,
              fontWeight: FontWeight.bold,
              fontSize: 13.sp,
            ),
          ),
          title: Text(
            'View more on Asda Brighton Marina',
            style: TextStyleConfig.textStyle(
              // fontFamily: FontFamilyText.sFProDisplaySemibold,
              textColor: AppColors.blackColor,
              //fontWeight: FontWeight.w500,
              fontSize: 13.sp,
            ),
          ),
          trailing: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.navigate_next,
              color: AppColors.blackColor,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.backgroundImage),
                  )),
                  child: Obx(
                    () => InkWell(
                      onTap: () {
                        if (homeScreenController.favorite
                            .contains(index.toString())) {
                          homeScreenController.favorite
                              .remove(index.toString());
                        } else {
                          homeScreenController.favorite.add(index.toString());
                        }
                        //homeScreenController.selectedFavorite.value = !homeScreenController.selectedFavorite.value;
                      },
                      child: Icon(
                        homeScreenController.favorite.contains(index.toString())
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: homeScreenController.favorite
                                .contains(index.toString())
                            ? AppColors.redColor
                            : AppColors.whiteColor2,
                      ).commonOnlyPadding(left: 300, bottom: 80),
                    ),
                  ),
                ),
                Text(
                  'Scents Restaurant',
                  style: TextStyleConfig.textStyle(
                    // fontFamily: FontFamilyText.sFProDisplaySemibold,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  '\$0.35 Delivery Fee 20-35 min',
                  style: TextStyleConfig.textStyle(
                    // fontFamily: FontFamilyText.sFProDisplaySemibold,
                    textColor: AppColors.grey500Color,
                    //fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                )
              ],
            ).commonOnlyPadding(bottom: 10);
          },
        ).commonSymmetricPadding(horizontal: 10),
      ],
    ).commonSymmetricPadding(vertical: 10);
  }
}

class PickItUpForFreeModule extends StatelessWidget {
  PickItUpForFreeModule({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pick it up for free",
          style: TextStyleConfig.textStyle(
            // fontFamily: FontFamilyText.sFProDisplaySemibold,
            textColor: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        Text(
          "Skip the fees when you order pick-up",
          style: TextStyleConfig.textStyle(
            // fontFamily: FontFamilyText.sFProDisplayRegular,
            textColor: AppColors.grey700Color,
            fontWeight: FontWeight.normal,
            fontSize: 12.sp,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.backgroundImage),
                  )),
                  child: Obx(
                    () => InkWell(
                      onTap: () {
                        if (homeScreenController.favorite
                            .contains(index.toString())) {
                          homeScreenController.favorite
                              .remove(index.toString());
                        } else {
                          homeScreenController.favorite.add(index.toString());
                        }
                        //homeScreenController.selectedFavorite.value = !homeScreenController.selectedFavorite.value;
                      },
                      child: Icon(
                        homeScreenController.favorite.contains(index.toString())
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: homeScreenController.favorite
                                .contains(index.toString())
                            ? AppColors.redColor
                            : AppColors.whiteColor2,
                      ).commonOnlyPadding(left: 300, bottom: 80),
                    ),
                  ),
                ),
                Text(
                  "Wendy's",
                  style: TextStyleConfig.textStyle(
                    // fontFamily: FontFamilyText.sFProDisplaySemibold,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  '\$0.35 Delivery Fee 20-35 min',
                  style: TextStyleConfig.textStyle(
                    // fontFamily: FontFamilyText.sFProDisplaySemibold,
                    textColor: AppColors.grey500Color,
                    //fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ).commonOnlyPadding(top: 5, bottom: 10);
          },
        ),
      ],
    ).commonSymmetricPadding(horizontal: 10, vertical: 10);
  }
}

class LatestStoriesModule extends StatelessWidget {
  LatestStoriesModule({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Stories',
          maxLines: 1,
          style: TextStyleConfig.textStyle(
            // fontFamily: FontFamilyText.sFProDisplaySemibold,
            textColor: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ).commonOnlyPadding(left: 10),
        Text(
          'From  places in your area',
          maxLines: 1,
          style: TextStyleConfig.textStyle(
            // fontFamily: FontFamilyText.sFProDisplaySemibold,
            textColor: AppColors.blackColor,
            fontWeight: FontWeight.normal,
            fontSize: 12.sp,
          ),
        ).commonOnlyPadding(left: 10),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return index == 0 ? _firstStory() : _allStory();
            },
          ),
        ).commonOnlyPadding(top: 10),
      ],
    );
  }

  Widget _firstStory() {
    return Container(
      margin: const EdgeInsets.only(right: 10, bottom: 100),
      width: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage(AppImages.cakeImage)),
        // color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sarah h',
            maxLines: 1,
            style: TextStyleConfig.textStyle(
              // fontFamily: FontFamilyText.sFProDisplaySemibold,
              textColor: AppColors.whiteColor2,
              fontSize: 12.sp,
            ),
          ).commonOnlyPadding(left: 13),
          SizedBox(height: 3.h),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Reviews by top Customers',
                  style: TextStyleConfig.textStyle(
                    textColor: AppColors.whiteColor2,
                    // fontFamily: FontFamilyText.sFProDisplayRegular,
                    fontSize: 12.sp,
                  ),
                ),
                const WidgetSpan(
                  child: Icon(
                    Icons.east,
                    color: AppColors.whiteColor2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ).commonOnlyPadding(left: 10, top: 65),
    ).commonOnlyPadding(left: 10);
  }

  Widget _allStory() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10, bottom: 100),
          width: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(AppImages.cakeImage)),
            // color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sarah h',
                maxLines: 1,
                style: TextStyleConfig.textStyle(
                  // fontFamily: FontFamilyText.sFProDisplaySemibold,
                  textColor: AppColors.whiteColor2,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(height: 3.h),
              Text(
                "\" Good Food every time\"",
                maxLines: 2,
                style: TextStyleConfig.textStyle(
                  // fontFamily: FontFamilyText.sFProDisplaySemibold,
                  textColor: AppColors.whiteColor2,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ).commonOnlyPadding(left: 15, top: 65),
        ),
        Positioned(
          bottom: 75,
          left: 15,
          child: Container(
            decoration: BoxDecoration(
                // color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.greenColor, width: 3)),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.whiteColor2, width: 3)),
              child: CircleAvatar(
                  radius: 23,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: Image.asset(AppImages.cake2Image,
                          fit: BoxFit.cover))),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 17,
          child: Text(
            'Burger Beast',
            maxLines: 1,
            style: TextStyleConfig.textStyle(
              // fontFamily: FontFamilyText.sFProDisplaySemibold,
              textColor: AppColors.blackColor,
              fontSize: 12.sp,
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 17,
          child: Text(
            '1 day ago',
            maxLines: 1,
            style: TextStyleConfig.textStyle(
              // fontFamily: FontFamilyText.sFProDisplaySemibold,
              textColor: AppColors.blackColor,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}

class ProductCategoryListViewModule12 extends StatelessWidget {
  ProductCategoryListViewModule12({Key? key}) : super(key: key);
  final homeScreenController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.backgroundImage),
              )),
              child: Obx(
                () => InkWell(
                  onTap: () {
                    if (homeScreenController.favorite
                        .contains(index.toString())) {
                      homeScreenController.favorite.remove(index.toString());
                    } else {
                      homeScreenController.favorite.add(index.toString());
                    }
                    //homeScreenController.selectedFavorite.value = !homeScreenController.selectedFavorite.value;
                  },
                  child: Icon(
                    homeScreenController.favorite.contains(index.toString())
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color:
                        homeScreenController.favorite.contains(index.toString())
                            ? AppColors.redColor
                            : AppColors.whiteColor2,
                  ).commonOnlyPadding(left: 300, bottom: 80),
                ),
              ),
            ),
            Text(
              "Wendy's",
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
            Text(
              '\$0.35 Delivery Fee 20-35 min',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.grey500Color,
                //fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            )
          ],
        ).commonOnlyPadding(bottom: 10);
      },
    ).commonSymmetricPadding(horizontal: 10,vertical: 10);
  }
}
