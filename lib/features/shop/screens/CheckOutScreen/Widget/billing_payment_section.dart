import 'package:flutter/material.dart';
import 'package:t_store/TRoundedContainer.dart';
import 'package:t_store/common/widgets/Image/t_rounded_image.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return   Column(
      children: [
        TSectionHeading(title: 'Payment Method',buttonTitle: 'Change',onPressed: (){}),
        const SizedBox(height: TSize.spaceBtwItem/2),

        Row(
          children: [
            TRoundedContainer(
              height: 35,
              width: 60,
              backGroundColor: dark? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSize.sm),
              child: const Image(image: AssetImage(TImages.paypal),fit: BoxFit.contain),
            ),
            const SizedBox(width: TSize.spaceBtwItem / 2),
            Text('Paypal',style: Theme.of(context).textTheme.titleLarge)
          ],
        )

      ],
    );
  }
}
