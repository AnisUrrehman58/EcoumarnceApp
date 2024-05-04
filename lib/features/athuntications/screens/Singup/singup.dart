import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/athuntications/screens/Singup/widget/singup_form.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import '../../../../common/widgets/Login_Singup/form_divider.dart';
import '../../../../common/widgets/Login_Singup/socail_button.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});

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
            const TSingupForm(),
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

