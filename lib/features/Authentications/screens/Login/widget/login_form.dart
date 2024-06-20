import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/Authentications/Controllers/Login/login_controller.dart';
import 'package:t_store/utils/validators/validation.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../Signup/signup.dart';
import '../../password_configuration/forgot_password.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
        child: Padding(
          padding:
           const EdgeInsets.symmetric(vertical: TSize.spaceBtwSection),
          child: Column(
            children: [
              /// Email
              TextFormField(
                validator: (value) => TValidator.validateEmail(value),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: TTexts.email),
              ),
              const SizedBox(
                height: TSize.spaceBtwInputField,
              ),

              /// Password
              Obx(
                    () => TextFormField(
                      controller: controller.password,
                      validator:  (value) => TValidator.validatePassword(value),
                      obscureText: controller.hidePassword.value,
                       decoration:  InputDecoration(
                       labelText: TTexts.password,
                       prefixIcon: const Icon(Iconsax.password_check),
                       suffixIcon:IconButton(
                        onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                        icon:  Icon(controller.hidePassword.value ? Iconsax.eye_slash :Iconsax.eye)),
                  )
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
                      Obx(() => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value)
                      ),
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
                    onPressed: () => controller.emailAndPasswordSignIn(), child: const Text(TTexts.signIn)),
              ),
              const SizedBox(
                height: TSize.spaceBtwItem,
              ),

              /// Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () =>Get.to(() => const SignupScreen()),
                    child: const Text(TTexts.createAccount)),
              ),

            ],
          ),
        )
    );
  }
}
