import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/Image/T_Circular_image.dart';
import 'package:t_store/common/widgets/Text_Widget/section_heading.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';

import 'Widget/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        action: [
        ],
        title: Text('Profile'),
      ),
      /// Body
      body: SingleChildScrollView(
        child: Padding(
            padding:const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    /// Profile Picture
                    const TCircularImage(image: TImages.user,width: 80,height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              /// Details
              
              const SizedBox(height: TSize.spaceBtwItem/2),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItem),
              const TSectionHeading(title: 'Profile information',showActionButton: false),
              const SizedBox(height: TSize.spaceBtwItem),


               TProfileMenu( title: 'Name', value: 'Anis Ur Rahman', onPressed: () {}),
              TProfileMenu( title: 'Username', value: 'Anis_Ur_Rahman', onPressed: () {}),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItem),
               Column(children: [
                const TSectionHeading(title: 'Personal information',showActionButton: false),
                TProfileMenu( title: 'User ID', value: '45689', onPressed: () {},icon: Iconsax.copy4),
                 TProfileMenu( title: 'Email', value: 'anisurrehman069@gmail', onPressed: () {},),
                 TProfileMenu( title: 'Phone Number', value: '923182311043', onPressed: () {},),
                 TProfileMenu( title: 'Gender', value: 'Male', onPressed: () {},),
                 TProfileMenu( title: 'Date of Birthed', value: '21 Oct, 2000', onPressed: () {},),
                 const Divider(),
                 const SizedBox(height: TSize.spaceBtwItem),


                 Center(
                     child: TextButton(onPressed: (){}, child: const Text('Close Account',style: TextStyle(color: Colors.red),)))



               ],)

            ],
          ),
        ),
      ),
    );
  }
}

