import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/layouts/grid_layouts.dart';
import 'package:t_store/common/widgets/products/productS_cards/product_card_vertical.dart';
import 'package:t_store/utils/constants/size.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      appBar: TAppBar(title: Text('Popular Products'),showBackArrow: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSize.spaceBtwItem),
        child: TSortableProducts(),
      ),
    );
  }
}

