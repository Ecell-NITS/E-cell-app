import 'package:ecell_app/configs/configs.dart';
<<<<<<< HEAD
import 'package:ecell_app/pages/collabs_page/collabs_page.dart';
import 'package:ecell_app/pages/gallery_page/gallery_page.dart';
import 'package:ecell_app/pages/home_page/utils/icon_provider.dart';
import 'package:ecell_app/pages/login_page/login_page.dart';
import 'package:ecell_app/pages/profile_page/profile_page.dart';
import 'package:ecell_app/pages/resources_page/resources_page.dart';
import 'package:ecell_app/pages/signup_page/signup_page.dart';
import 'package:ecell_app/pages/splash_screen/splash_screen.dart';
import 'package:ecell_app/pages/teams_page/teams_page.dart';
=======
import 'package:ecell_app/pages/home/utils/icon_provider.dart';
>>>>>>> upstream/main
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
        theme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        routes: {
          Eventspage.routeName: (context) => const Eventspage(),
          HomePage.routeName: (context) => const HomePage(),
          SplashScreen.routeName: (context) => const SplashScreen(),
          CollabPage.routeName: (context) => const CollabPage(),
          EventRegistrationpage.routeName: (context) =>
              const EventRegistrationpage(),
          ProfilePage.routeName: (context) => const ProfilePage(),
          ResourcePage.routeName: (context) => const ResourcePage(),
          TeamsPage.routeName: (context) => const TeamsPage(),


          LoginPage.routeName: (context) => const LoginPage(),

        },
        // initialRoute: CollabPage.routeName,
      ),
    );
  }
}
