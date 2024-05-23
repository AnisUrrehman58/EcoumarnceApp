import 'package:flutter/material.dart';

import '../../../TRoundedContainer.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../Image/T_Circular_image.dart';
import '../Text_Widget/t_brand_title_text_with_verified_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });
  final bool showBorder;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final  isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSize.sm),
        shoBorder: showBorder,
        backGroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: TCircularImage(
                image: TImages.clothIcon,
                backGroundColor: Colors.transparent,
                overLayColor: isDark ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(width: TSize.spaceBtwItem / 2),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                      title: 'Nike', brandTextSizes: TextSizes.large),
                  Text(
                    '256 Product ',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
