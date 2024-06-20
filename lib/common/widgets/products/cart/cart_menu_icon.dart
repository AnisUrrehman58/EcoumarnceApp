import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/Cart/cart.dart';


class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,   this.iconColor, required this.onPressed,
  });
  final Color? iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () =>Get.to(()=>const CartScreen()), icon:const Icon (Iconsax.shopping_bag,color: Colors.black,)),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: Colors.black,
                  // .withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.white,fontSizeFactor: 0.8),)),
          ),
        )
      ],
    );
  }
}
