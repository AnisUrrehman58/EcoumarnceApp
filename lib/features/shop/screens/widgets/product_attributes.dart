import 'package:flutter/material.dart';
import 'package:t_store/TRoundedContainer.dart';
import 'package:t_store/common/widgets/Text_Widget/product_price_text.dart';
import 'package:t_store/common/widgets/Text_Widget/product_title_text.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/Chips/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        /// Selected Attributes  Pricing & Description --

        TRoundedContainer(
          padding: const EdgeInsets.all(TSize.md),
          backGroundColor: dark?TColors.darkGrey:TColors.grey,
          child:  Column(
            children: [
              /// Title, Price And stock Status --
              Row(
                children: [
                  const TSectionHeading(title: 'Variation',showActionButton: false),
                  const SizedBox(width: TSize.spaceBtwItem),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price:',smallSize: true),
                          const SizedBox(width: TSize.spaceBtwItem/2),
                          /// Actual Price
                          Text('\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSize.spaceBtwItem),
                          /// Sale Price
                          const TProductPriceText(price: '20')
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock:',smallSize: true),
                          const SizedBox(width: TSize.spaceBtwItem/2),

                          Text('In Stock',style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),

                ],
              ),
              /// Variations Description --
              
              const TProductTitleText(title: 'This is the Description of the Product and it can go up to max 4 line',
              smallSize: true,
                maxLine: 4,
              )

            ],
          ),
        ),
        const SizedBox(height: TSize.spaceBtwItem),

        /// -- Attributes
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const TSectionHeading(title: 'Colors',showActionButton: false),
              const SizedBox(height: TSize.spaceBtwItem/2),
              Wrap(
                spacing: 8,
                children: [

                  TChoiceChip(text: 'Green', selected: true,onSelected: (value){}),
                  TChoiceChip(text: 'Blue', selected: false,onSelected: (value){}),
                  TChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),
                ],
              )
              ],
            ),
         const SizedBox(height: TSize.spaceBtwItem/2),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size',showActionButton: false),
            const SizedBox(height: TSize.spaceBtwItem/2),
            Wrap(
              spacing: 8,
              children: [

                TChoiceChip(text: 'EU 34', selected: true,onSelected: (value){}),
                TChoiceChip(text: 'Eu 36', selected: false,onSelected: (value){}),
                TChoiceChip(text: 'Eu 38', selected: false,onSelected: (value){}),
              ],
            )

          ],
        ),
      ],
    );
  }
}

