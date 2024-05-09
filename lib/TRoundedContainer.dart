import 'package:flutter/cupertino.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/size.dart';

class TRoundedContainer extends StatelessWidget{
      const TRoundedContainer(
      {super.key,
        this.child,
        this.width,
        this.height,
      this.radius = TSize.radiusLg,
       this.shoBorder = false,
      this.borderColor = TColors.borderPrimary,
      this.backGroundColor=TColors.white,
       this.padding,
       this.margin
      });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool shoBorder;
  final Color borderColor;
  final Color backGroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: shoBorder? Border.all(color: borderColor) :null,
      ),
      child: child,
    );
  }
}
