import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/TRoundedContainer.dart';
import 'package:t_store/common/style/shadows.dart';
import 'package:t_store/common/widgets/Image/t_rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../Icons/t_circular-icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
/// Container with side padding, color edges,radius and shadow.
    return  Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSize.productImageRadius),
        color: dark ?TColors.darkGrey : TColors.white
      ),
      child:  Column(
        children: [
          /// thumbnail, wish list button, discount tag--
        TRoundedContainer(
          height: 180,
          padding: const EdgeInsets.all(TSize.sm),
          backGroundColor: dark? TColors.dark:TColors.light,

          child:  Stack(
            children: [
              /// thumbNail
               const TRoundedImage(imageUrl: TImages.productImage1,applyImageRadius: true),

              /// Sal Tag

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
          /// Detail --
          Padding(padding: const EdgeInsets.only(left: TSize.sm),
            child: Column(
              children: [
                Text(
                  'Green Nike Air Shoes',
                  style: Theme.of(context).textTheme.labelLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

