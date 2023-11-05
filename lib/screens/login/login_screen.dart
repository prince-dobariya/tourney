import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourney/config/dimens.dart';
import 'package:tourney/screens/login/login_c.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.fKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(children: [
              textFormField(
                  isEmail: true,
                  isEmpty_v: "enter email",
                  icon: Icons.email,
                  hintText: 'Enter Email',
                  textEditingController: controller.emailTEC),
              const SizedBox(
                height: 10,
              ),
              textFormField(
                  isEmpty_v: "enter password",
                  isEmail: false,
                  icon: Icons.lock,
                  hintText: 'Enter Password',
                  textEditingController: controller.passwordTEC),
              FilledButton.tonal(
                  onPressed: () {
                    controller.login();
                  },
                  child: controller.isLoading.value
                      ? const CircularProgressIndicator()
                      : const Text('Register'))
            ]),
          ),
        ),
      ),
    );
  }
}

TextFormField textFormField(
    {String? isEmpty_v,
    required bool isEmail,
    required IconData icon,
    required String hintText,
    required TextEditingController textEditingController}) {
  return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return isEmpty_v;
        }
        return null;
      },
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
          prefixIcon: Icon(icon)));
}
