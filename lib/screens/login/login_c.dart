import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController emailTEC = TextEditingController();
  TextEditingController passwordTEC = TextEditingController();
  // RxBool isLoading = false.obs;
  GlobalKey<FormState> fKey = GlobalKey<FormState>();

  void login() {
    isLoading.value = true;
    if (fKey.currentState?.validate() ?? false) {
      FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailTEC.text, password: passwordTEC.text).then((value) {
            // isLoading.value = false;
      });

      // isLoading.value = false;
    } else {
      // isLoading.value = false;
    }
  }

}