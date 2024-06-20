import 'package:flutter/material.dart';

import '../../../../TRoundedContainer.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';
class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      shoBorder: true,
      backGroundColor: dark? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(top: TSize.sm,bottom: TSize.sm,right: TSize.sm,left: TSize.md),
      child:
      Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a Promo cord? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          /// Button
          SizedBox(
              width: 88,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? TColors.white.withOpacity(0.5)
                          : TColors.dark.withOpacity(0.5),
                      backgroundColor:
                      TColors.grey.withOpacity(0.1),
                      side: BorderSide( color: TColors.grey.withOpacity(0.1))
                  ),
                  child: const Text('Apply')))
        ],
      ),
    );
  }
}
