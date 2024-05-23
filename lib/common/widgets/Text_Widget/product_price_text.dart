import 'package:flutter/material.dart';


class TProductPriceText extends StatelessWidget {
  const TProductPriceText(
      {super.key,
        required this.price ,
        this.maxLine = 2,
        this.currencySing = '\$',
         this.isLarge = false,
         this.lineThrough = false
      });

  final String price,currencySing;
  final bool isLarge;
  final bool lineThrough;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySing+price,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style:  isLarge
          ? Theme.of(context).
          textTheme.headlineMedium!.apply(decoration: lineThrough?TextDecoration.lineThrough : null)
          :Theme.of(context).textTheme.titleLarge!.apply(decoration
          : lineThrough?TextDecoration.lineThrough : null
      ),

    );
  }
}
