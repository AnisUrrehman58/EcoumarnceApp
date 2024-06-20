import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/TRoundedContainer.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/shop/screens/Cart/Widget/cart_2item.dart';
import 'package:t_store/features/shop/screens/CheckOutScreen/Widget/billing_address_section.dart';
import 'package:t_store/features/shop/screens/CheckOutScreen/Widget/billing_payment_section.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products.cart/cart/coupon_widget.dart';
import 'Widget/t_billing_amount_section.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Reviews',style: Theme.of(context).textTheme.headlineSmall),
      ),
      body:   SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// Item in cart
              const TCartItems(showAddRemoveButton: false),
              const SizedBox(height: TSize.spaceBtwSection),

              /// -- Coupon Text Field -
              const TCouponCode(),
              const SizedBox(height: TSize.spaceBtwSection),

              /// Billing Section --
              TRoundedContainer(
                padding: const EdgeInsets.all(TSize.md),
                shoBorder: true,
                backGroundColor: dark? Colors.black:Colors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSize.spaceBtwItem),
                    /// Divider
                    Divider(),
                    SizedBox(height: TSize.spaceBtwItem),

                    /// Payment Method
                    TBillingPaymentSection(),
                    SizedBox(height: TSize.spaceBtwItem),

                    /// Address
                    TBillingAddressSection()
                  ],
                ),
              )
            ],
          )
        ),
      ),

      /// CheckOut Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() =>  SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subTitle: 'Your item shipped soon',
              onPressed: () => Get.offAll(() => const NavigationMenu()))),
          child: const Text('Checkout \$1615.4'),
        ),
      ),

    );
  }
}

