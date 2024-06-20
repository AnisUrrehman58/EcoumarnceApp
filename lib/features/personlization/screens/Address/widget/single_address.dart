import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/TRoundedContainer.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  TRoundedContainer(
      width: double.infinity,
      shoBorder: true,
      padding: const EdgeInsets.all(TSize.md),
      backGroundColor: selectedAddress ? TColors.primary:Colors.transparent,
      borderColor: selectedAddress? Colors.transparent
          : dark
          ? TColors.darkGrey :TColors.grey,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItem),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon( selectedAddress? Iconsax.tick_circle5 : null,
              color: selectedAddress?dark  ?TColors.light: TColors.dark!.withOpacity(0.7): null,
            ),
          ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'John deo',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSize. sm /2),
              const Text('(+123)45678',maxLines: 1,overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSize. sm /2),
              const Text('(82356 Timmy Coves, South Liana, Maine, 87665, USA)',softWrap: true),
            ],
          )
        ],
      ),
    );
  }
}
