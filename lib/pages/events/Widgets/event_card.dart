import 'package:ecell_app/configs/configs.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: ScreenUtil().screenWidth * 0.7,
      // color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/event_image1.png', // Replace with your image path
                fit: BoxFit.contain,
                height: 240, // Set a fixed height for the image
              ),
            ),
            SizedBox(height: 8), // Space between image and description

            // Heading of the description
            Text(
              'Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black, // Ensure the text is black
              ),
            ),
            // Description text
            Text(
              '4th December 2022, New Gallery, NIT Silchar',
              style: TextStyle(
                fontSize: 7,
                color: Colors.black, // Ensure the text is black
              ),
            ),
            SizedBox(height: 8),
            // Row with two rounded rectangle columns aligned to the start
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align columns to the start
              children: [
                // First Column
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 12.0), // Padding to center the text
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(
                        0, 81, 177, 1), // Background color of the text
                    borderRadius:
                        BorderRadius.circular(12.0), // Rounded rectangle shape
                  ),
                  child: Center(
                    child: Text(
                      'Orientation',
                      style: TextStyle(
                        fontSize: 7,
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8), // Space between the two columns

                // Second Column
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 12.0), // Padding to center the text
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(
                        0, 81, 177, 1), // Background color of the text
                    borderRadius:
                        BorderRadius.circular(12.0), // Rounded rectangle shape
                  ),
                  child: Center(
                    child: Text(
                      'Engenius',
                      style: TextStyle(
                        fontSize: 7,
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8), // Space between row and next description

            // Third description text
            Text(
              'An interactive and fun event organized exclusively for the 1st year batch to give them a taste of how entrepreneurship works.',
              style: TextStyle(
                fontSize: 7,
                color: Colors.black, // Ensure the text is black
              ),
            ),
          ],
        ),
      ),
    );
    // return Container(
    //   margin: EdgeInsets.all(20),
    //   color: Colors.red,
    //   height: 50,
    //   child: Text("blaaaaaaaaaaa"),
    // );
  }
}
