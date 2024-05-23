import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/athuntications/screens/password_configuration/reset_password.dart';
import 'package:t_store/utils/constants/size.dart';

import '../../../../utils/constants/text_strings.dart';

class Forget_password extends StatelessWidget {
  const Forget_password({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:
         Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Heading
              Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSize.spaceBtwItem),
              Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(height: TSize.spaceBtwSection * 2),

              /// Form
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
              const SizedBox(height: TSize.spaceBtwSection ),
              /// Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(() =>    const ResetPassword()),
                    child: const Text(TTexts.submit)),
              ),


            ],
          ),
        ),
      );

  }
}
