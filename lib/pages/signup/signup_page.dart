import 'dart:convert';

import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/controllers/controllers.dart';
import 'package:ecell_app/dialogs/dialogs.dart';
import 'package:ecell_app/models/models.dart';
import 'package:ecell_app/pages/login/login_page.dart';
import 'package:ecell_app/utils/validator.dart';
import 'package:ecell_app/utils/widgets/custom_background/custom_background.dart';
import 'package:ecell_app/utils/widgets/custom_button/custom_button.dart';
import 'package:ecell_app/utils/widgets/custom_text_field/custom_text_field.dart';
import 'package:ecell_app/utils/widgets/snack_bar/error_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const String routeName = '/signupPage';

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool obscureText = true;
  bool obscureText2 = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  void validate() async {
    bool isSignUpSuccess = false;
    if (formKey.currentState!.validate() &&
        passController.text == confirmPassController.text) {
      showLoadingOverlay(
        parentContext: context,
        asyncTask: () async {
          final user = UserModel(
            name: nameController.text.toString(),
            email: emailController.text.toString().toLowerCase().trim(),
            password: passController.text.toString(),
          );
          final res = await UserController.create(user: user);
          if (res.statusCode == 200) {
            isSignUpSuccess = true;
            showSnackBar(context, (jsonDecode(res.body) as Map)["message"]);
          } else {
            showSnackBar(context, (jsonDecode(res.body) as Map)["error"]);
          }
        },
        onCompleted: () {
          if (isSignUpSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, LoginPage.routeName, (route) => false);
          }
        },
      );
    } else if (passController.text != confirmPassController.text) {
      showSnackBar(context, 'Passwords do not match');
    } else {
      showSnackBar(context, 'Please fill in the proper credentials');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
          bodyWidget: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(32.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSpacers.height160,
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: loginTextColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
                CustomSpacers.height10,
                const Text(
                  "Please sign up to continue",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                CustomSpacers.height20,
                CustomTextField(
                  cursorColor: Colors.white,
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return null;
                    }
                    return "Name cannot be empty";
                  },
                  controller: nameController,
                  hintText: 'NAME',
                  prefixIcon: const Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.white,
                  ),
                ),
                CustomSpacers.height16,
                CustomTextField(
                  cursorColor: Colors.white,
                  validator: Validator.isEmailValid,
                  controller: emailController,
                  hintText: 'EMAIL',
                  prefixIcon: const Icon(
                    Icons.mail_outline,
                    color: Colors.white,
                  ),
                ),
                CustomSpacers.height16,
                CustomTextField(
                    cursorColor: Colors.white,
                    validator: Validator.isPasswordValid,
                    controller: passController,
                    hintText: 'PASSWORD',
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    obscureText: obscureText,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: obscureText
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    )),
                CustomSpacers.height16,
                CustomTextField(
                    cursorColor: Colors.white,
                    validator: Validator.isPasswordValid,
                    controller: confirmPassController,
                    hintText: 'RE-ENTER PASSWORD',
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    obscureText: obscureText2,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText2 = !obscureText2;
                        });
                      },
                      icon: obscureText2
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    )),
                CustomSpacers.height20,
                SizedBox(
                  width: ScreenUtil.defaultSize.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                        onPressed: validate,
                        text: 'SIGNUP',
                        // newButtonColor: lightBlue,
                      ),
                      CustomSpacers.height20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, LoginPage.routeName);
                              },
                              child: const Text(
                                'Log in',
                                style: TextStyle(color: loginTextColor),
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
