import 'package:ecell_app/pages/events/Widgets/HorizontalScrollableStack.dart';
import 'package:ecell_app/pages/events/event_registration.dart';
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
          'Events Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
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
              HorizontalScrollableStack(),

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

              HorizontalScrollableStack(),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
