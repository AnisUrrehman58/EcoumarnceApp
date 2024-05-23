import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/size.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Row(
          children: [
            /// Rating
            const Icon(Iconsax.star5, color: Colors.amber, size: 34),
            const SizedBox(width: TSize.spaceBtwItem / 2),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '5.0',
                  style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(199)')
            ])),

          ],
        ),
        /// Shear Button
        IconButton(onPressed: (){}, icon: const Icon(Icons.share,size: TSize.iconLg,)
        )
      ],
    );
  }
}
