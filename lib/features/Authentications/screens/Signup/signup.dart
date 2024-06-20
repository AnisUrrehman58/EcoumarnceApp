import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/Authentications/screens/Signup/widget/singup_form.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import '../../../../common/widgets/Login_Signup/form_divider.dart';
import '../../../../common/widgets/Login_Signup/social_button.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              /// Title
            Text(TTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSize.spaceBtwSection),
              
              /// Form
            const TSignupForm(),
              const SizedBox(height: TSize.spaceBtwItem,),

              /// Divider
              TFormDivider(dividerText:TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSize.spaceBtwItem,),

              /// Social Button
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

