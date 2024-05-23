import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/personlization/screens/Setting/setting.dart';
import 'package:t_store/features/shop/screens/Store/store..dart';
import 'package:t_store/features/shop/screens/WishList/wish_list.dart';
import 'package:t_store/features/shop/screens/home.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 75,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:  (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode?Colors.black:Colors.white,
          indicatorColor: darkMode?Colors.white.withOpacity(0.1):Colors.black.withOpacity(0.1),
          destinations:  const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),

          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screen = [ const HomeScreen(),const StoreScreen(),const FavouriteScreen(),const SettingScreen(),];
}
