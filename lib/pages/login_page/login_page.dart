import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/utils/validator.dart';
import 'package:ecell_app/utils/widgets/custom_background/custom_background.dart';
import 'package:ecell_app/utils/widgets/custom_button/custom_button.dart';
import 'package:ecell_app/utils/widgets/custom_text_field/custom_text_field.dart';
import 'package:ecell_app/utils/widgets/snack_bar/error_snack_bar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/loginPage';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  void validate() {
    if (formKey.currentState!.validate()) {
    } else {
      showSnackBar(context, 'Please fill in the proper credentials');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
          bodyWidget: SingleChildScrollView(
        child: SizedBox(
          width: ScreenUtil.defaultSize.width,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSpacers.height160,
                  const Text(
                    "Login",
                    style: TextStyle(
                        color: loginTextColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  ),
                  CustomSpacers.height10,
                  const Text(
                    "Please log in to continue",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  CustomSpacers.height20,
                  CustomTextField(
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
                      validator: Validator.isPasswordValid,
                      controller: passController,
                      hintText: 'password',
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
                  SizedBox(
                    width: ScreenUtil.defaultSize.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password',
                              style: TextStyle(color: lightBlue),
                            ))
                      ],
                    ),
                  ),
                  CustomSpacers.height10,
                  SizedBox(
                    width: ScreenUtil.defaultSize.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButton(onPressed: validate, text: 'LOGIN'),
                        CustomSpacers.height20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(color: lightBlue),
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
        ),
      )),
    );
  }
}
