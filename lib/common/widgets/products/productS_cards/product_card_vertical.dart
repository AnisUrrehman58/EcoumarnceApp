import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/TRoundedContainer.dart';
import 'package:t_store/common/style/shadows.dart';
import 'package:t_store/common/widgets/Image/t_rounded_image.dart';
import 'package:t_store/common/widgets/Text_Widget/product_price_text.dart';
import 'package:t_store/common/widgets/Text_Widget/product_title_text.dart';
import 'package:t_store/features/shop/screens/Product_Detail/product_detail.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../Icons/t_circular-icon.dart';
import '../../Text_Widget/t_brand_title_text_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

/// Container with side padding, color edges,radius and shadow.
    return  GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: dark ?TColors.darkGrey : TColors.white
        ),
        child:
           Column(
            children: [
              /// thumbnail, wish list button, Discount tag--
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSize.sm),
              backGroundColor: dark? TColors.dark:TColors.light,

              child:  Stack(
                children: [
                  /// ThumbNail
                   const TRoundedImage(imageUrl: TImages.productImage1,applyImageRadius: true),

                  /// Sale Tag
                Positioned(
                  top: 10,
                  child: TRoundedContainer(
                    radius: TSize.sm,
                    backGroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSize.sm,vertical: TSize.xs),
                    child:  Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color:TColors.black),),


                  ),
                ),
                  /// favourite Icon Button --
                  const Positioned(
                      top:0,
                      right:0,
                     child: TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)),
                ],
              ),
            ),
              const SizedBox(height: TSize.spaceBtwItem /2,),
              /// Detail --
               const Padding(
                 padding: EdgeInsets.only(left: TSize.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  TProductTitleText(
                    title: "Green Nike Air Shoes",smallSize: true),
                    SizedBox(height: TSize.spaceBtwItem /2),
                    TBrandTitleWithVerifiedIcon(title: 'Nike' ),
                  ],
                ),
              ),
              const Spacer(),
              const SizedBox(height: TSize.spaceBtwItem /3),
              Padding(
                padding: const EdgeInsets.only(left: TSize.sm),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Price
                    const TProductPriceText(price: '35.0' ),
                    ///  Add to Cart Button
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(TSize.cardRadiusMd),
                          bottomRight: Radius.circular(TSize.cardRadiusMd),
                        ),
                      ),
                      child: const SizedBox( height: TSize.iconLg *1.3,width: TSize.iconLg *1.3,
                          child:
                          Icon(Iconsax.add,color: TColors.white,)),
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


