import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/size.dart';

class TAnimationLoaderWidget extends StatelessWidget {

  /// Default constructor for the TAnimationLeaderWidget.
  ///
  /// Parameters:
  ///       - Text: The Text Tobe Displayed below the animation.
  ///       - Animation: The path to the lottie animation file.
  ///       - ShowAction: Whether show to action button blue the next.
  ///       - ActionText: The Text to be displayed ont the action button.
  ///       - OnActionPressed: CallBAck function to be executed when the action button is presse

  const TAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction = false,
       this.actionText,
      this.onActionPressed});

      final String text;
      final String animation;
      final bool showAction;
      final String? actionText;
      final VoidCallback? onActionPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(animation,width: MediaQuery.of(context).size.width *0.8), /// Display Lottie Animation
           const SizedBox(height: TSize.defaultSpace),
          Text(text,style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
          ),
          showAction
          ? SizedBox(
            width: 250,
            child: OutlinedButton(
              onPressed: onActionPressed,
              style: OutlinedButton.styleFrom(backgroundColor: TColors.dark),
              child: Text(
                actionText!,
                style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.light),
              ),
            ),
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}



