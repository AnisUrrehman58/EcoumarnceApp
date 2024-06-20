import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/Authentications/screens/Login/login_screen.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:t_store/utils/exceptions/format_exceptions.dart';

import '../../../features/Authentications/screens/Signup/verify_email.dart';
import '../../../features/Authentications/screens/onboarding/onboarding.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class AuthenticationsRepository extends GetxController {

  static AuthenticationsRepository get instance => Get.find();

  /// Variable
 final deviceStorage = GetStorage();
 final _auth = FirebaseAuth.instance;

 /// Called From ain.dart on app launch
  @override
  void onReady() {
    // remove the Native Splash Screen
    FlutterNativeSplash.remove();
    // Redirect the appropriate screen
    screenRedirect();
  }


  /// Function to show relevant screen
  screenRedirect() async {
    final user = (_auth.currentUser);
    if(user != null){
      if(user.emailVerified){
        Get.offAll(() => const NavigationMenu());
      }else{
        Get.offAll(() =>  VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    }else{
      // local storage
      deviceStorage.writeIfNull('IsFirstTime', true);
      // check it if first time launching the app
      deviceStorage.read('IsFirstTime') != true
          ? Get.offAll(() => const LoginScreen()) // Redirect to login screen if not the first time
          : Get.offAll(const OnBoardingScreen()); // Redirect to OnBoardingScreen if it's the first time
    }

  }

  /* ------------------ Email & Password Sign in ------------------*/

  /// [EmailAuthentication] - Login
  Future<UserCredential> loginWithEmailAndPassword (String email,String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went to wrong please try again';
    }

  }

  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword (String email,String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went to wrong please try again';
    }

  }

  /// [EmailVerification] - MAIL VERIFICATION -
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    }on FormatException catch (_) {
      throw const TFormatException();
    } on TPlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something want to wrong ';
    }
  }
  /// [ReAuthenticate] -- ReAuthenticate User

  /// [EmailAuthenticate] -- Forgot & Password

  /* ----------------------------- Federated identity & social Sign-in --------------------------------*/

  /// [Google Authentication ] -- Google

  ///  [FaceBook Authentication] -- FaceBook

 /* -----------------------------./End Federated identity & social Sign-in ----------------------------*/

  /// [LogoutUser] -Valid for any Authentication.
  Future<void> logout() async {
   try {
     await FirebaseAuth.instance.signOut();
     Get.offAll(() => const LoginScreen());
   } on FirebaseAuthException catch (e){
     throw TFirebaseAuthException(e.code,).message;
   } on FirebaseException catch (e) {
     throw TFirebaseAuthException(e.code).message;
   } on FormatException catch (_) {
     throw const TFormatException();
   } on PlatformException catch (e){
     throw TPlatformException(e.code).message;
   } catch (e) {
     throw 'Something want to wrong. Please try again ';
   }
  }

 ///  [DeleteUser] - Remove user Auth and Firebase Account











}