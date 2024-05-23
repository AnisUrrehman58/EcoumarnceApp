import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/Icons/t_circular-icon.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/layouts/grid_layouts.dart';
import 'package:t_store/common/widgets/products/productS_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/home.dart';
import 'package:t_store/utils/constants/size.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium),
        action: [
          TCircularIcon(
            icon: Iconsax.add,onPressed: () =>Get.to(const HomeScreen()),

          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder: (_, index) =>const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
