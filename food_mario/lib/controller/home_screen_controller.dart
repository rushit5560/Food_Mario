import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/enums.dart';

class HomeScreenController extends GetxController{
  Rx deliveryOption = Rx(DeliveryOption.selected);
  RxBool isLoading = false.obs;
  RxBool selected = false.obs;
  RxBool selectedFavorite = false.obs;
  RxList favorite = [].obs;
  TextEditingController searchTextFieldController = TextEditingController();
}