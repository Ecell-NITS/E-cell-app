import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const String routeName = '/profilePage';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double containerWidth = screenSize.width * 0.8;
    final double containerHeight = screenSize.height * 0.52;
    const double textFieldHeight = 50.0;
    const double spacing = 20.0;
    const double bottomTextHeight = 20.0;

    return Scaffold(
      appBar: const CustomAppBar(
        appBarText: Text('data'),
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(
                color: const Color(0xFF0E3669),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: spacing),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          constraints: const BoxConstraints(
                            maxHeight: textFieldHeight,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    const SizedBox(height: spacing),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          constraints: const BoxConstraints(
                            maxHeight: textFieldHeight,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                          hintText: 'Year',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    const SizedBox(height: spacing),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          constraints: const BoxConstraints(
                            maxHeight: textFieldHeight,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                          hintText: 'Position',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    const SizedBox(height: bottomTextHeight),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.only(right: 20.0),
                      child: const Text(
                        'EDIT DETAILS',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -containerHeight * 0.20,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ClipPath(
                          clipper: SemicircleClipper(top: false),
                          child: Container(
                            width: containerWidth * 0.6,
                            height: containerHeight * 0.20,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: ClipPath(
                          clipper: SemicircleClipper(top: true),
                          child: Container(
                            width: containerWidth * 0.6,
                            height: containerHeight * 0.20,
                            decoration: const BoxDecoration(
                              color: Color(0xFF162740),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipOval(
                        child: Container(
                          width: containerWidth * 0.5,
                          height: containerWidth * 0.5,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/profile.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom clipper for semicircles
class SemicircleClipper extends CustomClipper<Path> {
  final bool top;

  SemicircleClipper({required this.top});

  @override
  Path getClip(Size size) {
    Path path = Path();
    if (top) {
      // Create a top semicircle
      path.moveTo(0, size.height);
      path.arcToPoint(
        Offset(size.width, size.height),
        radius: Radius.circular(size.width / 2),
        clockwise: true,
      );
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    } else {
      // Create a bottom semicircle
      path.moveTo(0, 0);
      path.arcToPoint(
        Offset(size.width, 0),
        radius: Radius.circular(size.width / 2),
        clockwise: false,
      );
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
