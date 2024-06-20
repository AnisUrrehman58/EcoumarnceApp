import 'package:flutter/material.dart';

import '../../../../../common/widgets/Text_Widget/product_price_text.dart';
import '../../../../../common/widgets/products.cart/cart/add_remove_button.dart';
import '../../../../../common/widgets/products.cart/cart/cart_item.dart';
import '../../../../../utils/constants/size.dart';


class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButton = true
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_,__)=> const SizedBox(height: TSize.spaceBtwSection),
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: (_, index) =>    Column(
        children: [
          const TCardItem(),
          if(showAddRemoveButton)
            const SizedBox(height: TSize.spaceBtwItem),
          /// Add Remove Button --
           if(showAddRemoveButton)
             const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra Space
                  SizedBox(width: 70),

                  /// Remove Button
                  TProductQuantityWithAddRemoveButton(),

                ],
              ),
              /// Product Total Price ---
              TProductPriceText(price: '256')
            ],
          )
        ],
      ),
    );
  }
}
