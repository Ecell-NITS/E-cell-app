import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/pages/Events-page/Event_registration.dart';
import 'package:ecell_app/pages/Events-page/Events-page.dart';
import 'package:ecell_app/pages/collabs_page/collabs_page.dart';
import 'package:ecell_app/pages/home_page/utils/icon_provider.dart';
import 'package:ecell_app/pages/splash_screen/splash_screen.dart';
import 'package:ecell_app/pages/testimonial_page/testimonial_page.dart';
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
        home: const Eventspage(),
        routes: {
          Eventspage.routeName: (context) => const Eventspage(),
          HomePage.routeName: (context) => const HomePage(),
          SplashScreen.routeName: (context) => const SplashScreen(),
          CollabPage.routeName: (context) => const CollabPage(),
          EventRegistrationpage.routeName: (context) => const EventRegistrationpage(),
          TestimonialPage.routeName: (context) => const TestimonialPage(),

        },
        // initialRoute: CollabPage.routeName,
      ),
    );
  }
}
