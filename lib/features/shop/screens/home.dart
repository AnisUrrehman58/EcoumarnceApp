
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/Image/t_rounded_image.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/products/productS_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/widgets/home_apppbar.dart';
import 'package:t_store/features/shop/screens/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/widgets/prormo+slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../common/widgets/Image_Text/vertical_image_text.dart';
import '../../../common/widgets/Text_Widget/section_heading.dart';
import '../../../common/widgets/custom_shapes/containers/TPrimery_headContainer.dart';
import '../../../common/widgets/custom_shapes/containers/search_container..dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return     const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Primary Cored design home page --//
            TPrimaryHeadContainer(
              child: Column(
                children: [
                  /// Custom AppBar
                    THomeAppBar(),

                  SizedBox(
                    height: TSize.spaceBtwSection,
                  ),

                  /// Custom Search Bar

                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSize.spaceBtwSection),

                  /// Categories
                  Padding(
                    padding:  EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      children: [
                         TSectionHeading(title: 'Popular Categories',showActionButton: false,
                           textColor: Colors.white),
                         SizedBox(height: TSize.spaceBtwItem),

                        /// Categories
                        T_Home_Categories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

             Padding(
              padding:  EdgeInsets.all(TSize.defaultSpace),
                 child: Column(
                   children: [
                     TPromoSlider(banners: [TImages.banner1,TImages.banner2,TImages.banner3,],),
                     SizedBox(height:TSize.spaceBtwItem ),

                     TProductCardVertical()
                   ],
                 )
            )
          ],
        ),
      ),
    );
  }
}





