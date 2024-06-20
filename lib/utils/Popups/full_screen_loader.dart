
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/Loaders/animation_loader.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

/// A utility class for managing a full-screen loading dialog --
class TFullScreenLoader {
  /// Open a full-screen loading dialog with a given text and animation
  /// this method doesn't return anything
  ///
  ///  Parameters :
  ///   - text: The text to be displayed in the loading dialog
  ///   - Animation: The Lottie animation to be  shown

  static void openLoadingDialog(String text, String animation) {

    showDialog(
        context: Get.overlayContext!, /// Use get.overlayContext for overlay dialog
        barrierDismissible: false,   /// The dialog can't be dismissed by typing outside it
        builder: (_) =>  PopScope(
          canPop: false,
            child:Container(
              color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.light,
              height: double.infinity,
              width: double.infinity,
              child:  Column(
                children: [
                  const SizedBox(height: 250),// Adjust the spacing as needed
                TAnimationLoaderWidget(text: text, animation: animation)
                ],
              ),
            )
        )
    );
  }

  /// Stop the currently open loading loading
  /// This method doesn't return anything

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop(); /// close the dialog using the navigator
  }
}