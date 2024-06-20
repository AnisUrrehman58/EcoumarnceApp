import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/Image/t_rounded_image.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/products/productS_cards/product_card_horizontal.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';

import '../../../../common/widgets/products/productS_cards/Widget/product_card_horizontal.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(showBackArrow: true,title: Text('Sports')),
      /// -- Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            /// Banners
            const TRoundedImage(imageUrl: TImages.promoBanner4,width: double.infinity,applyImageRadius: true),
            const SizedBox(height: TSize.spaceBtwSection),

            /// Sub-Categories --
            Column(
              children: [
                /// Heading --
                TSectionHeading(title: 'Sports Shirts',onPressed: (){}),
                const SizedBox(height: TSize.spaceBtwItem /2),

                /// Product Card horizontal --

                /// # 1
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder:(context, index) =>const SizedBox(width: TSize.spaceBtwItem),
                      itemBuilder:(context, index) => const TProductCardHorizontal()
                      ),
                ),
                const SizedBox(height: TSize.spaceBtwSection),
                /// # 2
                const TProductCardWidgetHorizontal(),
                const SizedBox(height: TSize.spaceBtwSection),
                /// # 3

                const TProductCardWidgetHorizontal(),
                const SizedBox(height: TSize.spaceBtwSection),
                /// # 4
                const TProductCardWidgetHorizontal(),


              ],
            )
          ],
        ),
      ),
    );
  }
}


