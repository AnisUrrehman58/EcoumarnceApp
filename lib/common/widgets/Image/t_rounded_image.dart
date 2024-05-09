import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.borderRadius = TSize.md,
    this.isNetWorkImage = false,
    this.applyImageRadius = true,
    this.backGroundColor = TColors.light,

  });

  final double? height,width;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backGroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetWorkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: height,
          width: width,
          padding: padding,
          decoration: BoxDecoration(
              border: border,color: backGroundColor,
              borderRadius: BorderRadius.circular(borderRadius)
          ),
          child: ClipRRect(
              borderRadius : applyImageRadius? BorderRadius.circular(borderRadius) : BorderRadius.zero,
              child: Image(
                fit: fit,image: isNetWorkImage ? NetworkImage(imageUrl) : AssetImage (imageUrl) as ImageProvider,)
          )
      ),
    );
  }
}
