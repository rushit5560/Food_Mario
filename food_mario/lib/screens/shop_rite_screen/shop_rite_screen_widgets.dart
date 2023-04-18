import 'package:flutter/material.dart';
import 'package:food_mario/constants/app_images.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/colors.dart';
import '../../../constants/messages.dart';
import '../../../controller/shop_rite_screen_controller.dart';
import '../../../custom_widgets/custom_submit_button.dart';
import '../../../custom_widgets/custom_textfromfiled.dart';
import '../../../utils/style/style.dart';
import '../order_detail_screen/order_detail_screen.dart';

class ShopRiteSearchBarModule extends StatelessWidget {
  ShopRiteSearchBarModule({Key? key}) : super(key: key);
  final shopRiteScreenController = Get.find<ShopRiteScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        ),
        SizedBox(height: 2.h),
        SearchBarTextFormFiledCustom(
          fieldController: shopRiteScreenController.searchTextFieldController,
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
      ],
    ).commonSymmetricPadding(horizontal: 10,vertical: 5);
  }
}


class FeaturedAndCategoriesModule extends StatelessWidget {
   FeaturedAndCategoriesModule({Key? key}) : super(key: key);
   final shopRiteScreenController = Get.find<ShopRiteScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            InkWell(
              onTap: (){},
              child: const Icon(
                size: 25,
                Icons.access_time_filled_outlined,
                color: AppColors.blackColor,
              ),
            ),
            SizedBox(width: 2.w),
            Text(
              'in 60 minutes',
              maxLines: 1,
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: (){},
              child: const Icon(
                size: 25,
                Icons.monetization_on,
                color: AppColors.blackColor,
              ),
            ),
            SizedBox(width: 2.w),
            Text(
              'Pricing and Fees',
              maxLines: 1,
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontSize: 12.sp,
              ),
            ),
          ],
        ).commonSymmetricPadding(horizontal: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomButtonModule(
                  labelText: 'Delivery',
                  onPress: () {},
                  buttonColor: AppColors.blackColor),
            ),
            SizedBox(width: 2.w),
            Expanded(
              child: CustomButtonModule(
                labelText: 'Categories',
                onPress: () {},
                buttonColor: AppColors.blackColor,
              ),
            ),
            SizedBox(width: 2.w),
            Expanded(
              child: CustomButtonModule(
                labelText: 'Sell all',
                onPress: () {},
                buttonColor: AppColors.blackColor,
              ),
            ),
          ],
        ).commonSymmetricPadding(horizontal: 10,vertical: 10),
        SizedBox(
          height: Get.height*0.200,
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 10,right: 10),
              width: Get.width * 0.90,
              //color: Colors.red,
              decoration: const BoxDecoration(
                color: AppColors.indigoColor,
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image: AssetImage(AppImages.backgroundImage)),
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("\$ Delivery Fee with selected yogurt products",
                    //maxLines: 1,
                    style: TextStyleConfig.textStyle(
                      // fontFamily: FontFamilyText.sFProDisplaySemibold,
                      textColor: AppColors.whiteColor2,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ).commonOnlyPadding(top: 80,left: 20),
            );
          },),
        ),
      ],
    ).commonSymmetricPadding(vertical: 10);
  }
}


class FruitsAndVegetablesModule extends StatelessWidget {
   FruitsAndVegetablesModule({Key? key}) : super(key: key);
  final shopRiteScreenController = Get.find<ShopRiteScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Fruits & Vegetables',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            TextButton(
              onPressed: (){},
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
        ).commonOnlyPadding(left: 10,right: 10,bottom: 3),
       // SizedBox(height: 1.h),
        SizedBox(
          height: 262,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin:  const EdgeInsets.only(left: 10,right: 10),
                width: Get.width *0.43,
                decoration: const BoxDecoration(
                  //color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 45,
                     // width: 100,
                      decoration:  BoxDecoration(
                        border: Border.all(color: AppColors.grey300Color),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add",
                            style: TextStyleConfig.textStyle(
                              // fontFamily: FontFamilyText.sFProDisplaySemibold,
                              textColor: AppColors.yellowColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                            ),
                          ),
                          // SizedBox(width: 1.5.w),
                          Container(
                            margin: const EdgeInsets.only(top: 3,bottom: 3),
                            decoration:const BoxDecoration(
                              color: AppColors.whiteColor2,
                              shape: BoxShape.circle,
                              boxShadow:[
                                BoxShadow(
                                 blurRadius: 5,
                                  offset: Offset(0, 6),
                                  color: AppColors.grey400Color,
                                ),
                              ]
                            ),
                            child:  IconButton(
                              onPressed: (){
                                Get.to(()=> OrderDetailScreen());
                              },
                              icon:  const Icon(Icons.add,
                                color: AppColors.yellowColor,
                                //size: 37,
                              ),
                            ),
                          ),
                        ],
                      ).commonOnlyPadding(left: 10),
                    ).commonOnlyPadding(left: 70),
                    Image.asset(
                      AppImages.appleImage,
                      fit: BoxFit.fill,
                      //height: 120,
                    ).commonOnlyPadding(left: 10,top: 5,right: 70),
                    //SizedBox(height: 1.h),
                    Text(
                      "Organic Tomato wqer4wy6u67u7 rjgtihjtyihjtyiyj",
                      //maxLines: 2,
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
                        textColor: AppColors.blackColor,
                        //fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                    ),
                    //SizedBox(height: 1.h),
                    Text(
                      '1 Tomato',
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
      ],
    );
  }
}



class BeveragesModule extends StatelessWidget {
  BeveragesModule({Key? key}) : super(key: key);
  final shopRiteScreenController = Get.find<ShopRiteScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Beverages',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            TextButton(
              onPressed: (){},
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
        ).commonOnlyPadding(left: 10,right: 10,bottom: 3),
        SizedBox(height: 1.h),
        SizedBox(
          height: 285,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin:  const EdgeInsets.only(left: 10,right: 10),
                width: Get.width *0.43,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      //margin: EdgeInsets.all(3),
                      height: 45,
                      // width: 100,
                      decoration:  BoxDecoration(
                        //color: Colors.red,
                        border: Border.all(color: AppColors.grey300Color),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add",
                            style: TextStyleConfig.textStyle(
                              // fontFamily: FontFamilyText.sFProDisplaySemibold,
                              textColor: AppColors.yellowColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                            ),
                          ),
                          // SizedBox(width: 1.5.w),
                          Container(
                            // height: 25,
                            // width: 80,
                            margin: const EdgeInsets.only(top: 3,bottom: 3),
                            decoration:const BoxDecoration(
                                color: AppColors.whiteColor2,
                                shape: BoxShape.circle,
                                // border: Border.all(color: AppColors.grey400Color),
                                // borderRadius: BorderRadius.circular(30),
                                boxShadow:[
                                  BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(0, 6),
                                    color: AppColors.grey400Color,
                                  ),
                                ]
                            ),
                            child:  IconButton(
                              onPressed: (){
                                Get.to(()=> OrderDetailScreen());
                              },
                              icon:  const Icon(Icons.add,
                                color: AppColors.yellowColor,
                                //size: 37,
                              ),
                            ),
                          ),
                        ],
                      ).commonOnlyPadding(left: 10),
                    ).commonOnlyPadding(left: 70),
                    Image.asset(
                      AppImages.googleImage,
                      fit: BoxFit.fill,
                      //height: 120,
                    ).commonOnlyPadding(left: 10,top: 5,right: 70),
                    //SizedBox(height: 1.h),
                    Text(
                      "Organic Tomato wqer4wy6u67u7 rjgtihjtyihjtyiyj",
                      //maxLines: 2,
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
                        textColor: AppColors.blackColor,
                        //fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                    ),
                    //SizedBox(height: 1.h),
                    Text(
                      '1 Tomato',
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.grey500Color,
                        //fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      '12 * 12 fl oz',
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
      ],
    );
  }
}


class FrozenFoodsModule extends StatelessWidget {
  FrozenFoodsModule({Key? key}) : super(key: key);
  final shopRiteScreenController = Get.find<ShopRiteScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Frozen Foods',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            TextButton(
              onPressed: (){},
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
        ).commonOnlyPadding(left: 10,right: 10,bottom: 3),
        //SizedBox(height: 1.h),
        SizedBox(
          height: 285,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin:  const EdgeInsets.only(left: 10,right: 10),
                width: Get.width *0.43,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      //margin: EdgeInsets.all(3),
                      height: 45,
                      // width: 100,
                      decoration:  BoxDecoration(
                        //color: Colors.red,
                        border: Border.all(color: AppColors.grey300Color),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add",
                            style: TextStyleConfig.textStyle(
                              // fontFamily: FontFamilyText.sFProDisplaySemibold,
                              textColor: AppColors.yellowColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                            ),
                          ),
                          // SizedBox(width: 1.5.w),
                          Container(
                            // height: 25,
                            // width: 80,
                            margin: const EdgeInsets.only(top: 3,bottom: 3),
                            decoration:const BoxDecoration(
                                color: AppColors.whiteColor2,
                                shape: BoxShape.circle,
                                // border: Border.all(color: AppColors.grey400Color),
                                // borderRadius: BorderRadius.circular(30),
                                boxShadow:[
                                  BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(0, 6),
                                    color: AppColors.grey400Color,
                                  ),
                                ]
                            ),
                            child:  IconButton(
                              onPressed: (){
                                Get.to(()=> OrderDetailScreen());
                              },
                              icon:  const Icon(Icons.add,
                                color: AppColors.yellowColor,
                                //size: 37,
                              ),
                            ),
                          ),
                        ],
                      ).commonOnlyPadding(left: 10),
                    ).commonOnlyPadding(left: 70),
                    Image.asset(
                      AppImages.tomatoImage,
                      fit: BoxFit.fill,
                      //height: 120,
                    ).commonOnlyPadding(left: 10,top: 5,right: 70),
                    //SizedBox(height: 1.h),
                    Text(
                      "Organic Tomato wqer4wy6u67u7 rjgtihjtyihjtyiyj",
                      //maxLines: 2,
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
                        textColor: AppColors.blackColor,
                        //fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                    ),
                    //SizedBox(height: 1.h),
                    Text(
                      '1 Tomato',
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.grey500Color,
                        //fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      '12 * 12 fl oz',
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
      ],
    );
  }
}


class PantryAndGroceriesModule1 extends StatelessWidget {
  PantryAndGroceriesModule1({Key? key}) : super(key: key);
  final shopRiteScreenController = Get.find<ShopRiteScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pantry & Groceries',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            TextButton(
              onPressed: (){},
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
        ).commonOnlyPadding(left: 10,right: 10,bottom: 3),
        //SizedBox(height: 1.h),
        SizedBox(
          height: 285,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin:  const EdgeInsets.only(left: 10,right: 10),
                width: Get.width *0.43,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      //margin: EdgeInsets.all(3),
                      height: 45,
                      // width: 100,
                      decoration:  BoxDecoration(
                        //color: Colors.red,
                        border: Border.all(color: AppColors.grey300Color),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add",
                            style: TextStyleConfig.textStyle(
                              // fontFamily: FontFamilyText.sFProDisplaySemibold,
                              textColor: AppColors.yellowColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                            ),
                          ),
                          // SizedBox(width: 1.5.w),
                          Container(
                            // height: 25,
                            // width: 80,
                            margin: const EdgeInsets.only(top: 3,bottom: 3),
                            decoration:const BoxDecoration(
                                color: AppColors.whiteColor2,
                                shape: BoxShape.circle,
                                // border: Border.all(color: AppColors.grey400Color),
                                // borderRadius: BorderRadius.circular(30),
                                boxShadow:[
                                  BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(0, 6),
                                    color: AppColors.grey400Color,
                                  ),
                                ]
                            ),
                            child:  IconButton(
                              onPressed: (){
                                Get.to(()=> OrderDetailScreen());
                              },
                              icon:  const Icon(Icons.add,
                                color: AppColors.yellowColor,
                                //size: 37,
                              ),
                            ),
                          ),
                        ],
                      ).commonOnlyPadding(left: 10),
                    ).commonOnlyPadding(left: 70),
                    Image.asset(
                      AppImages.bottleImage,
                      fit: BoxFit.fill,
                      //height: 120,
                    ).commonOnlyPadding(left: 10,top: 5,right: 70),
                    //SizedBox(height: 1.h),
                    Text(
                      "Organic Tomato wqer4wy6u67u7 rjgtihjtyihjtyiyj",
                      //maxLines: 2,
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
                        textColor: AppColors.blackColor,
                        //fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                    ),
                    //SizedBox(height: 1.h),
                    Text(
                      '1 Tomato',
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.grey500Color,
                        //fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      '12 * 12 fl oz',
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
      ],
    );
  }
}



class PantryAndGroceriesModule2 extends StatelessWidget {
  PantryAndGroceriesModule2({Key? key}) : super(key: key);
  final shopRiteScreenController = Get.find<ShopRiteScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pantry & Groceries',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            TextButton(
              onPressed: (){},
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
        ).commonOnlyPadding(left: 10,right: 10,bottom: 3),
        //SizedBox(height: 1.h),
        SizedBox(
          height: 285,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin:  const EdgeInsets.only(left: 10,right: 10),
                width: Get.width *0.43,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      //margin: EdgeInsets.all(3),
                      height: 45,
                      // width: 100,
                      decoration:  BoxDecoration(
                        //color: Colors.red,
                        border: Border.all(color: AppColors.grey300Color),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add",
                            style: TextStyleConfig.textStyle(
                              // fontFamily: FontFamilyText.sFProDisplaySemibold,
                              textColor: AppColors.yellowColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                            ),
                          ),
                          // SizedBox(width: 1.5.w),
                          Container(
                            // height: 25,
                            // width: 80,
                            margin: const EdgeInsets.only(top: 3,bottom: 3),
                            decoration:const BoxDecoration(
                                color: AppColors.whiteColor2,
                                shape: BoxShape.circle,
                                // border: Border.all(color: AppColors.grey400Color),
                                // borderRadius: BorderRadius.circular(30),
                                boxShadow:[
                                  BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(0, 6),
                                    color: AppColors.grey400Color,
                                  ),
                                ]
                            ),
                            child:  IconButton(
                              onPressed: (){
                                Get.to(()=> OrderDetailScreen());
                              },
                              icon:  const Icon(Icons.add,
                                color: AppColors.yellowColor,
                                //size: 37,
                              ),
                            ),
                          ),
                        ],
                      ).commonOnlyPadding(left: 10),
                    ).commonOnlyPadding(left: 70),
                    Image.asset(
                      AppImages.googleImage,
                      fit: BoxFit.fill,
                      //height: 120,
                    ).commonOnlyPadding(left: 10,top: 5,right: 70),
                    //SizedBox(height: 1.h),
                    Text(
                      "Organic Tomato wqer4wy6u67u7 rjgtihjtyihjtyiyj",
                      //maxLines: 2,
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
                        textColor: AppColors.blackColor,
                        //fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                    ),
                    //SizedBox(height: 1.h),
                    Text(
                      '1 Tomato',
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.grey500Color,
                        //fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      '12 * 12 fl oz',
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
      ],
    );
  }
}


class MeatSeafoodAndPlantBasedModule extends StatelessWidget {
  MeatSeafoodAndPlantBasedModule({Key? key}) : super(key: key);
  final shopRiteScreenController = Get.find<ShopRiteScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Meat, Seafood & Plant-Based',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            TextButton(
              onPressed: (){},
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
        ).commonOnlyPadding(left: 10,right: 10,bottom: 3),
        //SizedBox(height: 1.h),
        SizedBox(
          height: 285,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin:  const EdgeInsets.only(left: 10,right: 10),
                width: Get.width *0.35,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                       height: 40,
                      margin: const EdgeInsets.only(top: 3,bottom: 3),
                      decoration:const BoxDecoration(
                          color: AppColors.whiteColor2,
                          shape: BoxShape.circle,
                          // border: Border.all(color: AppColors.grey400Color),
                          // borderRadius: BorderRadius.circular(30),
                          boxShadow:[
                            BoxShadow(
                              blurRadius: 5,
                              offset: Offset(0, 6),
                              color: AppColors.grey400Color,
                            ),
                          ]
                      ),
                      child:  IconButton(
                        onPressed: (){
                          Get.to(()=> OrderDetailScreen());
                        },
                        icon:  const Icon(Icons.add,
                          color: AppColors.yellowColor,
                          //size: 37,
                        ),
                      ),
                    ).commonOnlyPadding(left: 70),
                    Image.asset(
                      AppImages.bottleImage,
                      fit: BoxFit.fill,
                      //height: 120,
                    ).commonOnlyPadding(left: 5,top: 5,right: 50),
                    //SizedBox(height: 1.h),
                    Text(
                      "Organic Tomato wqer4wy6u67u7 rjgtihjtyihjtyiyj",
                      //maxLines: 2,
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
                        textColor: AppColors.blackColor,
                        //fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                    ),
                    //SizedBox(height: 1.h),
                    Text(
                      '1 Tomato',
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.grey500Color,
                        //fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      '12 * 12 fl oz',
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
      ],
    );
  }
}


class CheeseModule extends StatelessWidget {
  CheeseModule({Key? key}) : super(key: key);
  final shopRiteScreenController = Get.find<ShopRiteScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cheese',
              style: TextStyleConfig.textStyle(
                // fontFamily: FontFamilyText.sFProDisplaySemibold,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            TextButton(
              onPressed: (){},
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
        ).commonOnlyPadding(left: 10,right: 10,bottom: 3),
        //SizedBox(height: 1.h),
        SizedBox(
          height: 285,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin:  const EdgeInsets.only(left: 10,right: 10),
                width: Get.width *0.35,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 40,
                      margin: const EdgeInsets.only(top: 3,bottom: 3),
                      decoration:const BoxDecoration(
                          color: AppColors.whiteColor2,
                          shape: BoxShape.circle,
                          // border: Border.all(color: AppColors.grey400Color),
                          // borderRadius: BorderRadius.circular(30),
                          boxShadow:[
                            BoxShadow(
                              blurRadius: 5,
                              offset: Offset(0, 6),
                              color: AppColors.grey400Color,
                            ),
                          ]
                      ),
                      child:  IconButton(
                        onPressed: (){
                          Get.to(()=> OrderDetailScreen());
                        },
                        icon:  const Icon(Icons.add,
                          color: AppColors.yellowColor,
                          //size: 37,
                        ),
                      ),
                    ).commonOnlyPadding(left: 70),
                    Image.asset(
                      AppImages.tomatoImage,
                      fit: BoxFit.fill,
                      //height: 120,
                    ).commonOnlyPadding(left: 5,top: 5,right: 50),
                    //SizedBox(height: 1.h),
                    Text(
                      "Organic Tomato wqer4wy6u67u7 rjgtihjtyihjtyiyj",
                      //maxLines: 2,
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
                        textColor: AppColors.blackColor,
                        //fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                    ),
                    //SizedBox(height: 1.h),
                    Text(
                      '1 Tomato',
                      style: TextStyleConfig.textStyle(
                        // fontFamily: FontFamilyText.sFProDisplaySemibold,
                        textColor: AppColors.grey500Color,
                        //fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      '12 * 12 fl oz',
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
      ],
    );
  }
}