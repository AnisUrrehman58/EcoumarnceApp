import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/TRoundedContainer.dart';
import 'package:t_store/common/widgets/Icons/t_circular-icon.dart';
import 'package:t_store/common/widgets/Image/t_rounded_image.dart';
import 'package:t_store/common/widgets/Text_Widget/product_price_text.dart';
import 'package:t_store/common/widgets/Text_Widget/product_title_text.dart';
import 'package:t_store/common/widgets/Text_Widget/t_brand_title_text_with_verified_icon.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
        width: 320  ,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(TSize.productImageRadius),
    color: dark ? TColors.darkGrey : TColors.softGrey
    ),
      child:  Row(
        children: [
          /// Thumbnail
          TRoundedContainer(
            height: 125,
            padding: const EdgeInsets.all(TSize.sm),
            backGroundColor: dark? TColors.dark: TColors.light,
            child:  Stack(
              children: [
                /// -- Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(imageUrl: TImages.productImage1,applyImageRadius: true),
                ),

                /// Sale tage--

                TRoundedContainer(
                  radius: TSize.sm,
                  backGroundColor: TColors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(horizontal: TSize.sm,vertical: TSize.xs),
                  child: Text('25%',style: Theme.of(context).textTheme.labelLarge),
                ),
                const Positioned(
                    top: 0,
                    right:0,
                    child: TCircularIcon(icon: Iconsax.heart5,color: Colors.red,height: 37,
                    width: 37,))
              ],
            ),
          ),

          /// Detail

          SizedBox(
          width: 172,
            child:  Padding(
              padding: const EdgeInsets.only(left: TSize.sm,top: TSize.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(title: 'Green Nike shoes new product lunch',smallSize: true),
                      SizedBox(height: TSize.spaceBtwItem / 2),
                      TBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      const Flexible(child: TProductPriceText(price: '256.0')),

                      /// Add to Cart
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSize.cardRadiusMd),
                          bottomRight: Radius.circular(TSize.productImageRadius))
                        ),
                        child: const SizedBox(
                          width: TSize.iconLg * 1.5,
                          height: TSize.iconLg * 1.5,
                          child: Center(child: Icon(Iconsax.add,color: TColors.white)),
                        ),
                      )

                    ],
                  ),



                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
