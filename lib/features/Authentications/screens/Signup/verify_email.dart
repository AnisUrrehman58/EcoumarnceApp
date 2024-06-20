import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/Authentication/authentications_repository.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../Controllers/Signup/verify_email_controller.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});
  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        /// The close icon in the app bar is use to logout the user redirect them to the login screen.
        /// This approach is taken to handle scenarios where the user enters the registration process,
        /// If not verified, the app always navigates to the verification screen.......
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationsRepository.instance.logout(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// images
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              /// Title & Subtitle

              Text(
                TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItem,),
              Text(email?? '',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItem,),
              Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwSection,),

              /// Button

              SizedBox(width: double.infinity,child: ElevatedButton(
                  onPressed: () => controller.checkEmailVerificationStatus(),
                child:  const Text(TTexts.tContinue),
                  )
              ),
              const SizedBox(height: TSize.spaceBtwSection,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: ()=>controller.sendEmailVerification() , child: const Text(TTexts.resendEmail)),),





            ],
          ),
        ),
      ),
    );
  }
}
