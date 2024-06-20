import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/List_Tiles/settings_menu_tiles.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/TPrimery_headContainer.dart';
import 'package:t_store/features/Authentications/screens/Login/login_screen.dart';
import 'package:t_store/features/personlization/screens/Address/address.dart';
import 'package:t_store/features/shop/screens/Order/order.dart';
import 'package:t_store/utils/constants/size.dart';

import '../../../../common/widgets/List_Tiles/user_profile_tiles.dart';
import '../../../../utils/constants/colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ---Header
            TPrimaryHeadContainer(
                child:Column(
                  children: [
                    /// AppBAr
                    TAppBar(title: Text('Account',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),
                    /// User Profile Cards
                    const TUserProfileTitle(),
                    const SizedBox(height: TSize.spaceBtwSection),

                  ],
                )
            ),

            ///  --- Body parts
            
             Padding(
                padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: 'Account Settings',showActionButton: false),
                  const SizedBox(height: TSize.spaceBtwItem),

                  TSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(()=> const UserAddressScreen()),
                  ),
                  TSettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove product and move to checkout', onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-Progress and Completed Orders', onTap: () => Get.to(()=> const OrderScreen())),
                  TSettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons', onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.notification, title: 'Notification', subTitle: 'Set and kind of notification message', onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected account', onTap: (){},),

                  /// Apps Setting
                  const SizedBox(height: TSize.spaceBtwSection),
                  const TSectionHeading(title: 'App Settings',showActionButton: false),
                  const SizedBox(height: TSize.spaceBtwItem),
                  TSettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload data to your Cloud  Firebase', onTap: (){},),

                  TSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendations based on location',
                    trailing: Switch(value: true,onChanged: (value) {}),
                  ),

                  TSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mod',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false,onChanged: (value) {}),
                  ),

                  TSettingMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: true,onChanged: (value) {}),
                  ),

                  /// Logout Button
                  const SizedBox(height: TSize.spaceBtwSection),
                  SizedBox(width: double.infinity,
                  child: OutlinedButton(onPressed: () => Get.to(() =>const LoginScreen()), child: const Text('Logout'))),

                  const SizedBox(height: TSize.spaceBtwSection *2.2),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

