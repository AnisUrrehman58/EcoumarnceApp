import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/Authentications/screens/Signup/widget/term_condition_checkbox.dart';
import 'package:t_store/utils/validators/validation.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../Controllers/Signup/signup_controller.dart';


class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller  = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
        child: Column(
      children: [
        Row(
          children: [
            /// First Name & Last Name
            Expanded(
              child: TextFormField(
                controller: controller.firstName,
                validator:  (value) => TValidator.validateEmptyText('First name',value),
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: TSize.spaceBtwInputField,

            ),
            Expanded(
              child: TextFormField(
                controller: controller.lastname,
                validator:  (value) => TValidator.validateEmptyText('Last name', value),

                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwInputField,
        ),

        /// UserName
        TextFormField(
          controller: controller.userName,
          validator:  (value) => TValidator.validateEmptyText('User name', value),

          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSize.spaceBtwInputField,
        ),

        /// Email
        TextFormField(
          controller: controller.email,
          validator:  (value) => TValidator.validateEmail(value),

          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(
          height: TSize.spaceBtwInputField,
        ),

        /// Phone Number
        TextFormField(
          controller: controller.phoneNumber,
          validator:  (value) => TValidator.validatePhoneNumber(value),

          decoration: const InputDecoration(
            labelText: TTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(
          height: TSize.spaceBtwInputField,
        ),

        /// Password
        Obx(() => TextFormField(
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
          height: TSize.spaceBtwSection,
        ),

        /// Term & Conditions

        const TTermsAndConditionCheckbox(),
        const SizedBox(
          height: TSize.spaceBtwSection,
        ),

        /// Sing Up Button

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(TTexts.createAccount)
          ),
        ),
      ],
    ));
  }
}
