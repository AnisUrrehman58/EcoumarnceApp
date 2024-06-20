import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/products/productS_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/All_Products/all_products.dart';
import 'package:t_store/features/shop/screens/widgets/home_apppbar.dart';
import 'package:t_store/features/shop/screens/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/widgets/prormo+slider.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';
import '../../../common/widgets/Text_Widget/section_heading.dart';
import '../../../common/widgets/custom_shapes/containers/TPrimery_headContainer.dart';
import '../../../common/widgets/custom_shapes/containers/search_container..dart';
import '../../../common/widgets/layouts/grid_layouts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return       Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Primary Cored design home page --//
            TPrimaryHeadContainer(
              child: Column(
                children: [
                  /// Custom AppBar
                    const THomeAppBar(),

                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  ),

                  /// Custom Search Bar

                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSize.spaceBtwSection),

                  /// Categories
                  Padding(
                    padding:  const EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      children: [
                         TSectionHeading(title: 'Popular Categories',onPressed: () => Get.to(() => const AllProducts()), textColor: Colors.white),
                         const SizedBox(height: TSize.spaceBtwItem),

                        /// Categories
                         const THomeCategories(),
                        const SizedBox(height: TSize.spaceBtwSection)
                      ],
                    ),
                  )
                ],
              ),
            ),

             Padding(
              padding:  const EdgeInsets.all(TSize.defaultSpace),
                 child: Column(
                   children: [
                     const TPromoSlider(banners: [TImages.banner1,TImages.banner2,TImages.banner3,],),
                     const SizedBox(height:TSize.spaceBtwSection ),

                     /// Popular Product ---

                      TGridLayout(itemCount: 4,itemBuilder: (_, index) => const TProductCardVertical(),),





                   ],
                 )
            )
          ],
        ),
      ),
    );
  }
}






