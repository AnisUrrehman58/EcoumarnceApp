import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../Icons/t_circular-icon.dart';


class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSize.md,
          color: THelperFunctions.isDarkMode(context)?TColors.white:TColors.black,
          backGroundColor: THelperFunctions.isDarkMode(context)?TColors.darkGrey:TColors.light,
        ),
        const SizedBox(width: TSize.spaceBtwItem),
        Text('2',style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSize.spaceBtwItem),

        /// Add Button --
        const TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSize.md,
          color: TColors.white,
          backGroundColor: TColors.primary,
        ),
      ],
    );
  }
}
