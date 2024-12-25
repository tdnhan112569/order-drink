import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:order_cart/helper/google_auth_helper.dart';

class UserAuthController extends GetxController {

  static UserAuthController get to => Get.find();
  User? currentUser;
  StreamController<User?> userAuth = StreamController<User?>();

  UserAuthController() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (kDebugMode) {
        if (user == null) {
          print("Sign-out event!");
        } else {
          print('Sign-in event! User info: $user}');
        }
      }

      userAuth.sink.add(user);
      currentUser = user;
      update();
    });
  }

  void signIn() {
    GoogleAuthHelper.signInWithGoogle();
  }

  void signOut() {
    GoogleAuthHelper.signOut();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    currentUser = null;
    userAuth.close();
    super.onClose();
  }
}