import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/Login/login_screen.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


  /// Variables
final pageController = PageController();
Rx<int> currentPageIndex = 0.obs;

 /// update current index when next page Scroll
void updatePageIndicator(index) => currentPageIndex.value = index;

/// jump to see specific dot  selected page
void dotNavigationClick(index) {

  currentPageIndex.value = index;

  pageController.jumpTo(index);
}

/// update current index & jump  to next page

void nextPage() {
  if (currentPageIndex.value == 2){
    Get.offAll( const LoginScreen());
  }else{
    int page = currentPageIndex.value +1;
    pageController.jumpToPage(page);
  }
}

/// update Current Index & jump to the last page

void skipPage() {
  currentPageIndex.value = 2;
  pageController.jumpTo(2);
}

}