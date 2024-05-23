import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/Text_Widget/t_brand_title_text.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/size.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLine = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.iconColor = TColors.primary,
    this.brandTextSizes = TextSizes.small,
  });
  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child:TBrandTitleText(
              title: title,
              color: textColor,
              maxLines: maxLine,
              textAlign: textAlign,
              brandTextSizes: brandTextSizes,
            )
        ),
        const SizedBox(width: TSize.xs,),
        const Icon(Iconsax.verify5,color: TColors.primary,size: TSize.iconMd,)
      ],
    );
  }
}
