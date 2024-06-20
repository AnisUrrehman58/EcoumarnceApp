import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/size.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        /// SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$256.0',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItem/2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$5.0S0',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),

        const SizedBox(height: TSize.spaceBtwItem/2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Text Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$146.40',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItem),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.titleLarge),
            Text('\$1615.4',style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ],
    );
  }
}
