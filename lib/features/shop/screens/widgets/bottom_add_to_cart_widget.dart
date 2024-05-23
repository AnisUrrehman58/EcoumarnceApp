import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/Icons/t_circular-icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Container(
      padding: const EdgeInsets.symmetric(vertical: TSize.defaultSpace/2,horizontal: TSize.defaultSpace),
      decoration: BoxDecoration(
        color: dark? TColors.darkGrey:TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSize.cardRadiusLg),
          topRight: Radius.circular(TSize.cardRadiusLg),
        )
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              TCircularIcon(
                  icon: Iconsax.minus,
                backGroundColor: TColors.darkGrey,
                height: 40,
                width: 40,
              ),
              SizedBox(width: TSize.spaceBtwItem),
              Text('0'),
              SizedBox(width: TSize.spaceBtwItem),

              TCircularIcon(
                icon: Iconsax.add,
                backGroundColor: TColors.black,
                height: 40,
                width: 40,
                color: TColors.white,
              ),

            ],
          ),
          ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSize.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black)

            ), child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
