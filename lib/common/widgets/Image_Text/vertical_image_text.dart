import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    this.textColor = TColors.white,
    this.backGroundColor,
    this.onTap,
  });
  final  String title,image;
  final Color textColor;
  final Color? backGroundColor ;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final  dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:  const EdgeInsets.only(right :TSize.spaceBtwItem),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              height: 56,
              width: 56,
              padding:   const EdgeInsets.all(TSize.sm),
              decoration: BoxDecoration(
                  color: backGroundColor?? ( dark ? TColors.black: TColors.white),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Image.asset(image,fit: BoxFit.cover,color: dark?TColors.light:TColors.dark),

              ),
            ),
            /// Text --
            const SizedBox(height: TSize.spaceBtwItem /2 ),
            SizedBox(
              width: 80,
              child: Text(
                title,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.textWhite),
                maxLines: 1,
                overflow: TextOverflow.ellipsis
            ),
            ),
          ],
        ),
      ),
    );
  }
}
