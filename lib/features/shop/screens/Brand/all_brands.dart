import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/BrandCard/brand_card.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/layouts/grid_layouts.dart';
import 'package:t_store/features/shop/screens/Brand/brand_products.dart';
import 'package:t_store/utils/constants/size.dart';
class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(title: Text('Brand'),showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            /// Heading --
            const TSectionHeading(title: 'Brands',showActionButton: false),
            const SizedBox(height: TSize.spaceBtwItem),

            /// Brands
            TGridLayout(
                itemCount: 8,
                mainAxisEvent: 85,
                itemBuilder: (context, index) =>
                     TBrandCard(showBorder: true,
                    onTap: () =>Get.to(() => const BrandProducts()),
                    ))
          ],
        ),
      ),
    );
  }
}
