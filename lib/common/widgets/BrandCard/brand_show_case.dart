import 'package:flutter/material.dart';

import '../../../TRoundedContainer.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'brand_card.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.images,
  });

  final  List <String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      shoBorder: true,
      borderColor: TColors.darkGrey,
      backGroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItem),
      child: Column(
        children: [
          /// Brand With Product Count
          const TBrandCard(showBorder:false),
          const SizedBox(height: TSize.spaceBtwItem,),


          /// Bran top 3 Product Images

          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),)

        ],
      ),
    );
  }


  Widget brandTopProductImageWidget (String image,context){
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backGroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.dark:TColors.light,
        margin: const EdgeInsets.only(right: TSize.sm),
        padding: const EdgeInsets.all(TSize.md),
        child:  Image(image: AssetImage(image),fit: BoxFit.contain,),
      ),
    );


  }
}
