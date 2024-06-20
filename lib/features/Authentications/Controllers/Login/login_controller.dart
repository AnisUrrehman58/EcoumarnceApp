import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../common/widgets/Loaders/loader.dart';
import '../../../../data/repositories/Authentication/Authentications_Repository.dart';
import '../../../../utils/Network_Manager/network_manager.dart';
import '../../../../utils/Popups/full_screen_loader.dart';
import '../../../../utils/constants/image_strings.dart';

class LoginController extends GetxController {

  /// Variable
final rememberMe = false.obs;
final hidePassword = true.obs;
final localStorage = GetStorage();
final email =    TextEditingController();
final password =    TextEditingController();
GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

@override
void onInit() {
  email.text = localStorage.read('REMEMBER_ME_EMIL');
  password.text = localStorage.read('REMEMBER_ME_EMIL');
  super.onInit();
}

/// -- Email & Password SignIn
Future<void> emailAndPasswordSignIn() async {
  try {

    /// Start Loading
    TFullScreenLoader.openLoadingDialog('Logging you in ...',TImages.doerAnimation);

    /// Check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if(!isConnected) {
      TFullScreenLoader.stopLoading();
      return;
    }

    /// Form Validation
    if(!loginFormKey.currentState!.validate()) {
      TFullScreenLoader.stopLoading();
      return;
    }


    /// Save data if remember me selected
     if (rememberMe.value){
       localStorage.write('REMEMBER_ME_EMIL', email.text.trim());
       localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
     }
    /// Login User using Email & Password Authentication
    final userCredential = await AuthenticationsRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());


     /// remove loader
    TFullScreenLoader.stopLoading();

    /// Redirect
     AuthenticationsRepository.instance.screenRedirect();

  } catch (e) {
    TFullScreenLoader.stopLoading();
    TLoader.errorSnackBar(title: 'Oh Snap',message: e.toString());
  }
}

}