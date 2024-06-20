import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/style/spacing_style.dart';
import 'package:t_store/features/Authentications/screens/Login/widget/loggin-header.dart';
import 'package:t_store/features/Authentications/screens/Login/widget/login_form.dart';

import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/Login_Signup/form_divider.dart';
import '../../../../common/widgets/Login_Signup/social_button.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const TLoginHeader(),

              /// Form

              const TLoginForm(),
              /// Divider
               TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSize.spaceBtwItem),

              /// Footer

            const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}


