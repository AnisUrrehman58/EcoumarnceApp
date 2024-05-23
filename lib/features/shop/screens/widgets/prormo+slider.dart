import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/shop/controlers/home_controler.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../../../common/widgets/Image/t_rounded_image.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../utils/constants/size.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
final List banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1.1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items:
         banners.map((url) => TRoundedImage(imageUrl: url)).toList()

        ),
        const SizedBox(height: TSize.spaceBtwItem,),
        Obx(
          ()=> Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for(int i = 0; i<banners.length; i++ )
                 TCircularContainer(
                  width: 20,
                  height: 4,
                  margin:const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i?TColors.primary : TColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
