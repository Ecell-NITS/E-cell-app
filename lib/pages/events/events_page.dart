import 'package:ecell_app/pages/events/Event_registration.dart';
import 'package:ecell_app/pages/events/Widgets/HorizontalScrollableStack.dart';
import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ecell_app/utils/widgets/custom_background/custom_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Eventspage extends StatefulWidget {
  const Eventspage({super.key});

  //route
  static const String routeName = '/EventspageRoute';

  @override
  State<Eventspage> createState() => _EventsPageState();
}

class _EventsPageState extends State<Eventspage> {
  void _navigateToEventDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EventRegistrationpage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          appBarText: Text(
            'data',
          ),
        ),
        body: CustomBackground(
          bodyWidget: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50), // Shifts the content down
                InkWell(
                  onTap: () => _navigateToEventDetail(
                      context), // Navigate to new page on tap
                  child: Center(
                    child: Text(
                      'Events', // Your heading text
                      style: TextStyle(
                        fontSize: 24, // Adjust the font size
                        fontWeight: FontWeight.bold, // Make it bold
                        color: Colors.white, // Change the color if needed
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child:
                      HorizontalScrollableStack(), // Replace with your widget
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () => _navigateToEventDetail(
                      context), // Navigate to new page on tap
                  child: Center(
                    child: Text(
                      'Events', // Your heading text
                      style: TextStyle(
                        fontSize: 24, // Adjust the font size
                        fontWeight: FontWeight.bold, // Make it bold
                        color: Colors.white, // Change the color if needed
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child:
                      HorizontalScrollableStack(), // Replace with your widget
                ),
              ],
            ),
          ),
        ));
  }
}
