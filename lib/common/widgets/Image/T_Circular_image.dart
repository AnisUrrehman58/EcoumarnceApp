import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.height = 56,
    this.width = 56,
    required this.image,
    this.fit = BoxFit.cover,
    this.isNetworkImage=false,
    this.overLayColor,
    this.backGroundColor,
    this.padding = TSize.sm,
  });
  final BoxFit? fit;
  final String  image;
  final bool  isNetworkImage;
  final Color? overLayColor;
  final Color? backGroundColor;
  final double height,width,padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color:backGroundColor ??(THelperFunctions.isDarkMode(context) ? TColors.black :TColors.white),
          borderRadius: BorderRadius.circular(100)
      ),
      child: Center(
        child: Image(
            image:  isNetworkImage? NetworkImage(image):AssetImage(image) as ImageProvider,

            color: overLayColor


        ),
      ),


    );
  }
}
