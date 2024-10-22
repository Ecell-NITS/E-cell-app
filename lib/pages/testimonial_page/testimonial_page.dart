import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ecell_app/utils/widgets/custom_background/custom_background.dart';
import 'package:flutter/material.dart';

class TestimonialPage extends StatefulWidget {
  const TestimonialPage({super.key});

  // route
  static const String routeName = '/TestimonialPageRoute';

  @override
  State<TestimonialPage> createState() => _TestimonialPage();
}

class _TestimonialPage extends State<TestimonialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomBackground(
        bodyWidget: Stack(
          children: [
            // White box, placed a little below the top, and centered horizontally
            Positioned(
              top: 80, // Adjust this value to control space from the top
              left: MediaQuery.of(context).size.width * 0.5 - 150, // Centers the white box horizontally
              child: Container(
                width: 300, // Width of the white box
                height: 400, // Height of the white box
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0), // Square corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 5), // Shadow effect
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 30, right: 30), // Custom padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Main text
                      Text(
                        'Torem ipsum dolor sit amet, consectetur adipiscing elit. Torem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                      Spacer(), // Pushes the next content to the bottom
                      // Custom spacing from the bottom
                      SizedBox(height: 20), // Change this value for desired spacing
                      // Aligning bottom right text separately
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end, // Align text to the right
                          children: [
                            // Padding for name
                            Padding(
                              padding: const EdgeInsets.only(right: 65), // Custom right padding for name
                              child: Text(
                                'Name', // Name text
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            // Padding for position
                            Padding(
                              padding: const EdgeInsets.only(right: 85), // Custom right padding for position
                              child: Text(
                                'Post', // Position text
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Positioned for the image with dual-toned borders
            Positioned(
              left: -5, // Aligns the image to the leftmost part of the screen
              top: 400, // Adjust the top value to place the image correctly after the text in the white box
              child: Stack(
                children: [
                  // The image itself
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/testimonial image.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                      width: 170, // Adjust image width
                      height: 180, // Adjust image height
                    ),
                  ),

                  // Positioned for upper half border (e.g., dark color)
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 5, // Adjust border thickness
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(22, 39, 64, 1), // Upper half border color
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                  ),

                  // Positioned for left dual-colored border
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: 5, // Width of the left border
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(22, 39, 64, 1), // Upper half color
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(22, 39, 64, 1), // Lower half color
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Positioned for right dual-colored border
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    width: 5, // Width of the right border
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(22, 39, 64, 1), // Upper half color
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white, // Lower half color
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Positioned for bottom border
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 5, // Adjust border thickness
                      decoration: BoxDecoration(
                        color: Colors.white, // Lower half border color
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
