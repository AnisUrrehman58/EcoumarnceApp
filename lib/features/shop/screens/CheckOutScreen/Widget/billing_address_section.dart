import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/size.dart';

import '../../../../../common/widgets/Text_Widget/section_heading.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){}),
        Text('Cording with A',style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSize.spaceBtwItem / 2),

        Row(
          children: [
            const Icon(Icons.phone,size: 16,color: TColors.grey),
            const SizedBox(width: TSize.spaceBtwItem),
            Text('+92-318-2311043',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItem / 2),
        Row(
          children: [
            const Icon(Icons.location_history,size: 16,color: TColors.grey),
            const SizedBox(width: TSize.spaceBtwItem),
            Text('South laina, Maine 87695, USA',style: Theme.of(context).textTheme.bodyMedium,softWrap: true),
          ],
        ),




      ],
    );
  }
}
