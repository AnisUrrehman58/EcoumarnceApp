import 'package:flutter/material.dart';
import 'package:t_store/common/style/spacing_style.dart';

import '../../../utils/constants/size.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen({super.key, required this.image,
    required this.title, required this.subTitle,
    required this.onPressed});
final String image,title,subTitle;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
       child: Padding(
         padding: (TSpacingStyle.paddingWithAppbarHeight*2),
         child: Column(
           children: [
             /// Images
             Image(
               image:  AssetImage(image),
               width: THelperFunctions.screenWidth() * 0.6,),
             const SizedBox(
               height: TSize.spaceBtwSection,
             ),

             /// Title & Subtitle

             Text(
               title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,
             ),
             const SizedBox(height: TSize.spaceBtwItem,),
             const SizedBox(height: TSize.spaceBtwItem,),
             Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
             const SizedBox(height: TSize.spaceBtwSection,),

             /// Button
             SizedBox(width: double.infinity,
               child: ElevatedButton(onPressed: onPressed,
                 child: const Text(TTexts.tContinue)),),

           ],
         ),
       ),
      ),
    );
  }
}
