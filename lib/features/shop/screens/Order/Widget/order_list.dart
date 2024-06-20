import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/TRoundedContainer.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TOrderListItem extends StatelessWidget {
  const TOrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_,__) => const SizedBox(height: TSize.spaceBtwItem),
      itemBuilder: (_, index) => TRoundedContainer(
        shoBorder: true,
        padding: const EdgeInsets.all(TSize.md),
        backGroundColor: dark? TColors.dark: TColors.light,
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///-- 1 Row
            Row(
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(width: TSize.spaceBtwItem / 2),

                /// -- 2 Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1)),
                      Text('5 Jun 2024',style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),
                /// --3 Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: TSize.md)),
              ],
            ),
            const SizedBox(height: TSize.spaceBtwItem),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSize.spaceBtwItem / 2),

                      /// -- 2 Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',style: Theme.of(context).textTheme.labelMedium),
                            Text('[#920f2]',style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSize.spaceBtwItem / 2),

                      /// -- 2 Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1)),
                            Text('5 Oct 2024',style: Theme.of(context).textTheme.headlineSmall)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
