import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/Icons/t_circular-icon.dart';
import '../../../../common/widgets/Image/t_rounded_image.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edged_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
      final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgedWidget(
      child: Container(
        color: dark? TColors.darkGrey:TColors.light,
        child:  Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSize.productImageRadius * 2),
                child: Center(
                  child: Image(
                      image:AssetImage (TImages.productImage5)),
                ),
              ),
            ),
            /// Image Slider
            Positioned(
              right:0,
              bottom: 30,
              left: TSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_,__)=> const SizedBox(width: TSize.spaceBtwItem,),
                  itemBuilder: (_,index)=> TRoundedImage(
                    width: 80,
                    backGroundColor: dark ?TColors.dark: TColors.white ,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSize.sm),
                    imageUrl: TImages.productImage6,

                  ),

                ),
              ),
            ),

            const TAppBar(
              showBackArrow: true,
              action: [
                TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
