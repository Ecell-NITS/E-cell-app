import 'package:ecell_app/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';

void main() {
  runApp(const ECellApp());
}

class ECellApp extends StatelessWidget {
  const ECellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Cell App",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        SplashScreen.routeName: (context) => const SplashScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
