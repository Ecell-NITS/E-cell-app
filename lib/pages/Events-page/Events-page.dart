import 'package:ecell_app/pages/Events-page/Event_registration.dart';
import 'package:ecell_app/pages/Events-page/Widgets/HorizontalScrollableStack.dart';
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
      appBar: CustomAppBar(),
      body: CustomBackground(
        bodyWidget: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50), // Shifts the content down

              // First "Events" Text and Scrollable Stack
              GestureDetector(
                onTap: () => _navigateToEventDetail(context),
                child: Center(
                  child: Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Making the Scrollable Stack dynamic
              Container(
                width: MediaQuery.of(context).size.width, // Dynamically set the width
                child: HorizontalScrollableStack(), // Your horizontal scrolling widget
              ),

              SizedBox(height: 20),

              // Second "Events" Text and Scrollable Stack
              GestureDetector(
                onTap: () => _navigateToEventDetail(context),
                child: Center(
                  child: Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Second dynamic Scrollable Stack
              Container(
                width: MediaQuery.of(context).size.width, // Dynamically set the width
                child: HorizontalScrollableStack(),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
