import 'dart:async';
import 'package:get/get.dart';
import '../screens/introduction_screen/introduction_screen.dart';


class SplashScreencontroller extends GetxController {

  startTimer(){
    Timer(
      const Duration(milliseconds: 3000),
          (){
        Get.to(() =>  IntroductionScreen());
      },
    );
  }

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }
}
