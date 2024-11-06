import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/pages/gallery_page/gallery_page.dart';
import 'package:ecell_app/pages/splash_screen/splash_screen.dart';
import 'package:ecell_app/pages/testimonial_page/testimonial_page.dart';

import 'package:ecell_app/pages/home/utils/icon_provider.dart';

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
        // home: const TestimonialPage(),
        routes: {
          Eventspage.routeName: (context) => const Eventspage(),
          HomePage.routeName: (context) => const HomePage(),
          SplashScreen.routeName: (context) => const SplashScreen(),
          CollabPage.routeName: (context) => const CollabPage(),
          EventRegistrationpage.routeName: (context) =>
              const EventRegistrationpage(),
          TestimonialPage.routeName: (context) => const TestimonialPage(),
          ProfilePage.routeName: (context) => const ProfilePage(),
          ResourcePage.routeName: (context) => const ResourcePage(),
          TeamsPage.routeName: (context) => const TeamsPage(),
          GalleryPage.routeName: (context) => const GalleryPage(),
          LoginPage.routeName: (context) => const LoginPage(),
          SignUpPage.routeName: (context) => const SignUpPage(),
        },
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
