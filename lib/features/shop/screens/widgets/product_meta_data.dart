import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/Image/T_Circular_image.dart';
import 'package:t_store/common/widgets/Text_Widget/product_price_text.dart';
import 'package:t_store/common/widgets/Text_Widget/product_title_text.dart';
import 'package:t_store/common/widgets/Text_Widget/t_brand_title_text_with_verified_icon.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';

import '../../../../TRoundedContainer.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';
class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price--
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              radius: TSize.sm,
              backGroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSize.sm,vertical: TSize.xs),
              child:  Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color:TColors.black)),
            ),
            const SizedBox(width: TSize.spaceBtwSection),
            Text('\$250',style: Theme.of(context).textTheme.titleMedium!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSize.spaceBtwSection),
            const TProductPriceText(price: '170',isLarge: true,)
          ],
        ),
        const SizedBox(width: TSize.spaceBtwSection /1.5),

        /// Title
        const TProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(width: TSize.spaceBtwSection /1.5),
        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: ' Status'),
            const SizedBox(width: TSize.spaceBtwSection),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
        const SizedBox(width: TSize.spaceBtwSection /1.5),

        Row(
          children: [
            TCircularImage(
                image: TImages.shoeIcon,
              height: 32,
              width: 32,
              overLayColor: dark? TColors.white:TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSizes: TextSizes.medium,)
          ],
        )
      ],
    );
  }
}
