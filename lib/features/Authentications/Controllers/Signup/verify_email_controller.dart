import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/Loaders/loader.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/data/repositories/Authentication/authentications_repository.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class VerifyEmailController extends GetxController {

  static VerifyEmailController get instance => Get.find();

  /// send email whine never verify screen appears & st timer for auto direct
  @override
  void onInit(){
    setTimerAutoRedirect();
    sendEmailVerification();
    super.onInit();
  }

/// Send Email Verification
  sendEmailVerification() async {
    try {
      await AuthenticationsRepository.instance.sendEmailVerification();
      TLoader.successSnackBar(title: 'Email sent',message: 'Please Check your inbox and verify your email.');
    }catch(e){
      TLoader.errorSnackBar(title: 'Oh Snap',message: e.toString());
    }
  }

  /// Timer to Automatically Redirect on Email Verification
  setTimerAutoRedirect(){
    Timer.periodic(
       const Duration (seconds: 1),
            (timer) async{
          await FirebaseAuth.instance.currentUser?.reload();
          final user = FirebaseAuth.instance.currentUser;
          if(user?.emailVerified??false) {
            timer.cancel();
            Get.off(() => SuccessScreen(
            image: TImages.successfullyRegisterAnimation,
            title: TTexts.yourAccountCreatedTitle,
            subTitle: TTexts.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationsRepository.instance.screenRedirect(),
            ),
            );
          }
            }
            );

  }

  /// Manually Check if Email Verified
  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified) {
      Get.off(() => SuccessScreen(
        image: TImages.successfullyRegisterAnimation,
        title: TTexts.yourAccountCreatedTitle,
        subTitle: TTexts.yourAccountCreatedSubTitle,
        onPressed: () => AuthenticationsRepository.instance.screenRedirect(),
      ),
      );
    }
  }

  }
