import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container..dart';
import 'package:t_store/common/widgets/layouts/grid_layouts.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/features/shop/screens/Brand/all_brands.dart';
import 'package:t_store/features/shop/screens/Store/Widget/TCategoryTab.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/BrandCard/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store',style: Theme.of(context).textTheme.headlineMedium),
          action: [
            TCartCounterIcon( onPressed: (){},)
          ],
        ),
        body: NestedScrollView(

          /// Header
          headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
          pinned: true,
          floating: true,
        expandedHeight: 440,
        automaticallyImplyLeading: false,
        backgroundColor: THelperFunctions.isDarkMode(context) ?TColors.black :TColors.white,


              flexibleSpace: Padding(
                padding:  const EdgeInsets.all(TSize.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children:  [
                    /// Search Bar
                    const SizedBox(height: TSize.spaceBtwItem),
                    const TSearchContainer(text: 'Search in Store',
                    showBorder: true,
                      showBackGround: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: TSize.spaceBtwSection),

                    /// Featured Brands
                    TSectionHeading(title: 'Featured Brands',onPressed: () => Get.to(()=> const AllBrandsScreen()),),
                    const SizedBox(height: TSize.spaceBtwItem /1.5),

                      TGridLayout(
                          itemCount: 4,
                          mainAxisEvent: 80,
                          itemBuilder: (_, index) {
                            return     const TBrandCard(showBorder: true);

                    }
                    )
                  ],
                ),
              ),

              bottom:  const TTabBar(
                tabs: [

                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            )
          ];
        }, body:  const TabBarView(
          children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
          ],
        ),
        ),
      ),
    );
  }
}

