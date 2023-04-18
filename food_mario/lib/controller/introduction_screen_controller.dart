import 'package:get/get.dart';

class IntroductionScreenController extends GetxController{
  RxBool isLoading = false.obs;
  RxString selected = 'En'.obs;
  List<String>  list = ['En', 'Gu'].obs;

  getList(val){
    selected.value = val;
  }
}