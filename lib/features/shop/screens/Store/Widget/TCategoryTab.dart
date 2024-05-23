import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';
import 'package:t_store/common/widgets/layouts/grid_layouts.dart';
import 'package:t_store/common/widgets/products/productS_cards/product_card_vertical.dart';

import '../../../../../common/widgets/BrandCard/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/size.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Brand
              const TBrandShowCase(images:[TImages.productImage3,TImages.productImage2,TImages.productImage1],),
              const TBrandShowCase(images:[TImages.productImage3,TImages.productImage2,TImages.productImage1],),

              /// Product

              TSectionHeading(title: 'You might like',onPressed: (){}),
              const SizedBox(height: TSize.spaceBtwItem,),

              TGridLayout(itemCount: 4, itemBuilder: (_, index)=> const TProductCardVertical()),
              const SizedBox(height: TSize.spaceBtwSection,),

            ],
          ),

        )
      ],
    );
  }
}
