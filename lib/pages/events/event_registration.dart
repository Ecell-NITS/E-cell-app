import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ecell_app/utils/widgets/custom_background/custom_background.dart';
import 'package:flutter/material.dart';

class EventRegistrationpage extends StatefulWidget {
  const EventRegistrationpage({super.key});

  //route
  static const String routeName = '/EventRegistrationRoute';

  @override
  State<EventRegistrationpage> createState() => _EventsRegistrationState();
}

class _EventsRegistrationState extends State<EventRegistrationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: Text('data'),
      ),
      body: CustomBackground(
        bodyWidget: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.all(16.0), // Adds padding to the whole content
            child: Column(
              children: [
                SizedBox(height: 16), // Space below the app bar

                // Image section with rounded corners and white border
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(20.0), // Rounded corners
                      border: Border.all(
                        color: Colors.white, // White border color
                        width: 4.0, // Border width
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          16.0), // Same radius as the outer container for consistency
                      child: Image.asset(
                        'assets/images/event_image1.png', // Replace with your image path
                        fit: BoxFit.contain,
                        height: 250, // Fixed height for the image
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16), // Space between image and description

                // Description text box
                Container(
                  padding: EdgeInsets.all(
                      12.0), // Padding inside the description box
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(12.0), // Rounded corners
                  ),
                  child: Text(
                    'Individual Registration',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white, // White text color
                    ),
                    textAlign: TextAlign.center, // Center align the text
                  ),
                ),

                SizedBox(height: 24), // Space between description and form

                // Registration Form with 4 TextFields
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First Name TextField
                    TextField(
                      style: TextStyle(
                          color: Colors.white), // Blue text color when typing
                      decoration: InputDecoration(
                        labelText: 'Name ',
                        labelStyle:
                            TextStyle(color: Colors.grey), // Label color
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(
                                  14, 54, 105, 1)), // Blue border when focused
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .white), // White border when not focused
                        ),
                      ),
                      cursorColor: Color.fromRGBO(
                          14, 54, 105, 1), // Blue cursor when typing
                    ),
                    SizedBox(height: 16), // Space between text fields

                    // Last Name TextField
                    TextField(
                      style: TextStyle(
                          color: Colors.white), // Blue text color when typing
                      decoration: InputDecoration(
                        labelText: 'Scholar ID ',
                        labelStyle:
                            TextStyle(color: Colors.grey), // Label color
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(
                                  14, 54, 105, 1)), // Blue border when focused
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .white), // White border when not focused
                        ),
                      ),
                      cursorColor: Color.fromRGBO(
                          14, 54, 105, 1), // Blue cursor when typing
                    ),
                    SizedBox(height: 16), // Space between text fields

                    // Email TextField
                    TextField(
                      style: TextStyle(
                          color: Colors.white), // Blue text color when typing
                      decoration: InputDecoration(
                        labelText: 'Branch  ',
                        labelStyle:
                            TextStyle(color: Colors.grey), // Label color
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(
                                  14, 54, 105, 1)), // Blue border when focused
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .white), // White border when not focused
                        ),
                      ),
                      cursorColor: Color.fromRGBO(
                          14, 54, 105, 1), // Blue cursor when typing
                    ),
                    SizedBox(height: 16), // Space between text fields

                    // Phone Number TextField
                    TextField(
                      style: TextStyle(
                          color: Colors.white), // Blue text color when typing
                      decoration: InputDecoration(
                        labelText: 'Email ID ',
                        labelStyle:
                            TextStyle(color: Colors.grey), // Label color
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(
                                  14, 54, 105, 1)), // Blue border when focused
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .white), // White border when not focused
                        ),
                      ),
                      cursorColor: Color.fromRGBO(
                          14, 54, 105, 1), // Blue cursor when typing
                    ),

                    SizedBox(
                        height:
                            24), // Space at the bottom for buttons or further content
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
