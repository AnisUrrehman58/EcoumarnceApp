import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../Image/t_rounded_image.dart';
import '../../Text_Widget/product_title_text.dart';
import '../../Text_Widget/t_brand_title_text_with_verified_icon.dart';


class TCardItem extends StatelessWidget {
  const TCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSize.sm),
          backGroundColor: THelperFunctions.isDarkMode(context)?TColors.darkGrey:TColors.light,
        ),
        const SizedBox(width: TSize.spaceBtwItem),

        /// Title, Prize & Size --
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: TProductTitleText(title: 'Black Sports shoes ',maxLine: 1,)),

              /// Attributes --
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                        const TextSpan(text: ' ', style: TextStyle(fontSize: 8.0)),
                        TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge),
                        const TextSpan(text: ' ', style: TextStyle(fontSize: 9.0)),
                        TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                        const TextSpan(text: ' ', style: TextStyle(fontSize: 8.0)),
                        TextSpan(text: 'UK 278',style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
