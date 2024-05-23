import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/device/device_utility..dart';
import '../../../../utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.showBorder = true,
    this.showBackGround = true,
    this.icon = Iconsax.search_normal,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: TSize.defaultSpace),
  });
  final String    text;
  final IconData? icon;
  final EdgeInsetsGeometry padding;
  final bool showBackGround,showBorder;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSize.md),
          decoration: BoxDecoration(
              color: showBackGround?dark?TColors.dark : TColors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(TSize.cardRadiusLg),
              border: showBorder ? Border.all(color: TColors.grey) :null
          ),
          child:  Row(
            children: [
              Icon(icon,color: TColors.darkGrey),
              const SizedBox(width: TSize.spaceBtwItem),
              Text(text,style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}
