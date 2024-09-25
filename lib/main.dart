import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/pages/collabs_page/collabs_page.dart';
import 'package:ecell_app/pages/home_page/utils/icon_provider.dart';
import 'package:ecell_app/pages/login_page/login_page.dart';
import 'package:ecell_app/pages/profile_page/profile_page.dart';
import 'package:ecell_app/pages/resources_page/resources_page.dart';
import 'package:ecell_app/pages/signup_page/signup_page.dart';
import 'package:ecell_app/pages/splash_screen/splash_screen.dart';
import 'package:ecell_app/pages/teams_page/teams_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/pages.dart';

void main() {
  runApp(const ECellApp());
}

class ECellApp extends StatelessWidget {
  const ECellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IconProvider(),
      child: MaterialApp(
        title: "E-Cell App",
        theme: darkTheme,git add
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        routes: {
          LoginPage.routeName: (context) => const LoginPage(),
          SignUpPage.routeName: (context) => const SignUpPage(),
          HomePage.routeName: (context) => const HomePage(),
          SplashScreen.routeName: (context) => const SplashScreen(),
          CollabPage.routeName: (context) => const CollabPage(),
          ProfilePage.routeName: (context) => const ProfilePage(),
          ResourcePage.routeName: (context) => const ResourcePage(),
          TeamsPage.routeName: (context) => const TeamsPage(),
        },
        initialRoute: SplashScreen.routeName,
        // initialRoute: CollabPage.routeName,
      ),
    );
  }
}