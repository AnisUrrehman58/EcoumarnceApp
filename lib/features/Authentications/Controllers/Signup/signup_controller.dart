import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/Loaders/loader.dart';
import 'package:t_store/data/repositories/Authentication/authentications_repository.dart';
import 'package:t_store/data/repositories/User/user_repository.dart';
import 'package:t_store/utils/Popups/full_screen_loader.dart';
import 'package:t_store/utils/constants/image_strings.dart';

import '../../../../common/widgets/UserModel/user_model.dart';
import '../../../../utils/Network_Manager/network_manager.dart';
import '../../screens/Signup/verify_email.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();


  /// Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();       /// controller for email
  final firstName = TextEditingController();   /// controller for firstName input
  final lastname = TextEditingController();    /// controller for last name input
  final userName = TextEditingController();    /// controller for Username input
  final password = TextEditingController();    /// controller for password  input
  final phoneNumber = TextEditingController(); /// controller for phoneNumber input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); /// Form key for form validation

  /// --Signup
void signup() async {
  try {

    /// Start Loading
    TFullScreenLoader.openLoadingDialog('we are processing your information...',TImages.doerAnimation);

    /// Check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if(!isConnected) return;

    /// Form Validation
    if(!signupFormKey.currentState!.validate()) return;


    /// Privacy policy check
    if(!privacyPolicy.value) {
      TLoader.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In Order to create Account, you have must read and accept the privacy policy & term of use'
      );
      return;
    }

    /// Register user in the firebase Authentication & save your data in the firebase
    final userCredential = await AuthenticationsRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

    /// Save Authenticated user data in the firebase fireStore
    final newUser = UserModel(
      id: userCredential.user!.uid,
      firstName: firstName.text.trim(),
      lastName: lastname.text.trim(),
      userName: userName.text.trim(),
      email: email.text.trim(),
      phoneNumber: phoneNumber.text.trim(),
      profilePicture : ''
    );

    final userRepository = Get.put(UserRepository());
    await userRepository.saveUserRecord(newUser);

    /// Show Success Massage
    TLoader.successSnackBar(title: 'Congratulation',message: 'Your account has been created! Verify email to continue.');

    /// Move to Verify Email Screen
    Get.to(() =>   VerifyEmailScreen(email: email.text.trim()));

  }catch (e) {
    // show more Generic Error to the user
    TLoader.errorSnackBar(title: 'Oh Snap',message: e.toString());
  }finally {
    // Remove leader
    TFullScreenLoader.stopLoading();

  }
 }

}