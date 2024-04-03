import 'dart:async';

import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/configs/configurations/assets/asset.dart';
import 'package:ecell_app/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = '/splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomePage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ecellLogo),
            CustomSpacers.height10,
            const CircularProgressIndicator(
              color: ecellBlue,
            )
          ],
        ),
      ),
    );
  }
}
