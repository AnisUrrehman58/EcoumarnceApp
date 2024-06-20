import 'package:flutter/cupertino.dart';

import '../../../../../utils/constants/size.dart';
import '../product_card_horizontal.dart';

class TProductCardWidgetHorizontal extends StatelessWidget {
  const TProductCardWidgetHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          separatorBuilder:(context, index) =>const SizedBox(width: TSize.spaceBtwItem),
          itemBuilder:(context, index) => const TProductCardHorizontal()
      ),
    );
  }
}
