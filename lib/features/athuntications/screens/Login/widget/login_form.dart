import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/athuntications/screens/password_configuration/forgot_password.dart';
import 'package:t_store/navigation_menu.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../Singup/singup.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(vertical: TSize.spaceBtwSection),
          child: Column(
            children: [
              /// Email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: TTexts.email),
              ),
              const SizedBox(
                height: TSize.spaceBtwInputField,
              ),

              /// Password
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: TTexts.password,
                    suffixIcon: Icon(Iconsax.eye_slash)
                ),
              ),

              const SizedBox(
                height: TSize.spaceBtwInputField / 2,
              ),

              ///  Remember me & forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(TTexts.rememberMe)
                    ],
                  ),

                  /// forgot password

                  TextButton(
                      onPressed: () => Get.to(() =>const Forget_password()),
                      child: const Text(TTexts.forgetPassword))
                ],
              ),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              /// Sing In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => NavigationMenu()), child: const Text(TTexts.signIn)),
              ),
              const SizedBox(
                height: TSize.spaceBtwItem,
              ),

              /// Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () =>Get.to(() => const SingupScreen()),
                    child: const Text(TTexts.createAccount)),
              ),

            ],
          ),
        )
    );
  }
}
