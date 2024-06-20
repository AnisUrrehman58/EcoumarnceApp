import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';
import 'package:t_store/features/shop/screens/Products_Reviews/product_reviews.dart';
import 'package:t_store/features/shop/screens/widgets/bottom_add_to_cart_widget.dart';
import 'package:t_store/features/shop/screens/widgets/product_attributes.dart';
import 'package:t_store/features/shop/screens/widgets/product_meta_data.dart';
import 'package:t_store/utils/constants/size.dart';

import '../widgets/product_detail_image_slider.dart';
import '../widgets/rating_share_widget.dart';
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      /// Body--
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const TProductImageSlider(),

            /// Product Detail
            Padding(
                padding:const EdgeInsets.only(left: TSize.defaultSpace,right: TSize.defaultSpace,bottom: TSize.defaultSpace),
            child: Column(
              children: [
                /// Rating & Share Button --

                  const TRatingAndShare(),

                /// Price Title,Stock & Brande --
                const TProductMetaData(),

                /// Attributes

                const ProductAttributes(),

                const SizedBox(height: TSize.spaceBtwSection),
                /// -- Checkout Button
                
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text('Checkout')),),
                const SizedBox(height: TSize.spaceBtwItem),

                /// -- Description
                const TSectionHeading(title: 'Description',showActionButton: false),
                const SizedBox(height: TSize.spaceBtwItem),
                const ReadMoreText(
                    'This is the product description for blue Nike Sleeve less vest. There are more thing that can be added but i am just Practicing and nothing else.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Less',
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),

                ),
                /// -- Reviews
                const Divider(),
                const SizedBox(height: TSize.spaceBtwItem),
                 TSectionHeading(title: '(Reviews 199)',onPressed: ()=>Get.to(()=> const ProductReviewsScreen()),),
                const SizedBox(height: TSize.spaceBtwSection),
                ],
            ),
            )
          ],
        ),
      ),
    );
  }
}


