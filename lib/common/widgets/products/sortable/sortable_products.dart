import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';

import '../../../../utils/constants/size.dart';
import '../../layouts/grid_layouts.dart';
import '../productS_cards/product_card_vertical.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['Name','HigherPrice','LowerPrice','Sale','Newest','Popularity'].map((option) => DropdownMenuItem(value: option,child: Text(option))).toList(),
        ),
        const SizedBox(height: TSize.spaceBtwSection),
        TGridLayout(itemCount: 6, itemBuilder: (_,index) => const TProductCardVertical())
      ],
    );
  }
}
