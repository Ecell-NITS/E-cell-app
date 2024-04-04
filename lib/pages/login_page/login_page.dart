import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/utils/widgets/custom_background/custom_background.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/loginPage';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: CustomBackground(
              bodyWidget: SizedBox(
            width: ScreenUtil.defaultSize.width,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSpacers.height160,
                  Text(
                    "Login",
                    style: TextStyle(
                        color: loginTextColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  ),
                  CustomSpacers.height10,
                  Text(
                    "Please log in to continue",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  CustomSpacers.height20,
                ],
              ),
            ),
          )),
        ),
      ],
    );
  }
}
