import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/TRoundedContainer.dart';
import 'package:t_store/common/widgets/Rating/rating_indicator.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                 const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1)),
                const SizedBox(width: TSize.spaceBtwItem),
                Text('John doe',style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        /// Review
         Row(
          children: [
            const TRatingBarIndicator(rating: 3.5),
            const SizedBox(width: TSize.spaceBtwItem),
            Text('22-May-2024',style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItem),
        const ReadMoreText(
            'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Shown less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        ),

        const SizedBox(height: TSize.spaceBtwItem),
        
        TRoundedContainer(
          backGroundColor: dark? TColors.darkGrey:TColors.grey,
          padding: const EdgeInsets.all(TSize.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("T's Store",style: Theme.of(context).textTheme.titleMedium),
                  Text("21-May-2024",style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
              const SizedBox(height: TSize.spaceBtwItem),
              const ReadMoreText(
                'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: 'Shown less',
                trimCollapsedText: 'Show more',
                moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
              ),
            ],
          ),
        ),
        const SizedBox(height: TSize.spaceBtwSection),


      ],
    );
  }
}
