import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/size.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  /// A custom Circular Icon widget  with backGround Color.
  ///
  ///  Properties Are :
  ///  Container [width], [Height], & [backGroundColor].
  ///
  /// Icon's [size] , [color] & [onPressed].
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSize.lg,
    required this.icon,
    this.color,
    this.backGroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backGroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backGroundColor != null
          ?backGroundColor!
          : THelperFunctions.isDarkMode(context)
              ? TColors.black.withOpacity(0.9)
              : TColors.white.withOpacity(0.9)),
      child: IconButton(onPressed: onPressed, icon:Icon (icon,size: size,color: color,))
    );
  }
}
