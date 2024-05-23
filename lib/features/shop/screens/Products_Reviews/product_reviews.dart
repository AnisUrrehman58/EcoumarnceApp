import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/Products_Reviews/Widget/user_review_card.dart';
import 'package:t_store/utils/constants/size.dart';
import '../../../../common/widgets/Rating/rating_indicator.dart';
import 'Widget/rating_progress_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      /// -- AppBar
      appBar: const TAppBar(title: Text('Reviews & Ratings',style: TextStyle(fontSize: 23)),showBackArrow: true),

      /// --Body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Rating and reviews are verified and are form people who use  the same type of device that you use.',style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: TSize.spaceBtwSection),

              /// -- Over All Product rating
              const TOverAllProductRating(),
             const TRatingBarIndicator(rating: 3.5),
              const SizedBox(height: TSize.spaceBtwItem/2),
              Text('12.611',style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: TSize.spaceBtwSection),

              /// -- User Review List
               const UserReviewCard(),
               const UserReviewCard(),
               const UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}



