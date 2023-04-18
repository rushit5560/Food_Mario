import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../controller/index_screen_controller.dart';
import '../account_screen/account_screen.dart';
import '../baskets_screen/baskets_screen.dart';
import '../browse_screen/browse_screen.dart';
import '../home_screen/home_screen.dart';

class IndexScreen extends StatelessWidget {
  IndexScreen({Key? key}) : super(key: key);
  final indexScreenController = Get.put(IndexScreenController());
  final screen = [
    HomeScreen(),
     const BrowseScreen(),
     const BasketsScreen(),
     AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: indexScreenController.selectedIndex.value,
          children: screen,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: AppColors.grey200Color,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.blackColor,
          unselectedItemColor: AppColors.grey500Color,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) {
            // indexScreenController.homeScreenShow.value = false;
            indexScreenController.changeIndex(index);
          },
          currentIndex: indexScreenController.selectedIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Browse',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Baskets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
