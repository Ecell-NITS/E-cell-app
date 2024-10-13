import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalScrollableStack extends StatefulWidget {
  @override
  _HorizontalScrollableStackState createState() =>
      _HorizontalScrollableStackState();
}

class _HorizontalScrollableStackState extends State<HorizontalScrollableStack> {
  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.offset - 100,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollRight() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.offset + 100,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_left),
              onPressed: _scrollLeft,
            ),
            SizedBox(
              height: 400,
              width: 270, // Ensure this matches the width of one card plus margin
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                controller: _scrollController,
                physics: NeverScrollableScrollPhysics(), // Disable user scrolling
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 250, // This is the width of one card
                    height: 289,
                    margin: EdgeInsets.symmetric(horizontal: 10.0), // Margin on both sides
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8.0), // Padding for the whole content
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image section
                          Center(
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
                            mainAxisAlignment: MainAxisAlignment.start, // Align columns to the start
                            children: [
                              // First Column
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Padding to center the text
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 81, 177, 1), // Background color of the text
                                  borderRadius: BorderRadius.circular(12.0), // Rounded rectangle shape
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
                                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Padding to center the text
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 81, 177, 1), // Background color of the text
                                  borderRadius: BorderRadius.circular(12.0), // Rounded rectangle shape
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



                },
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: _scrollRight,
            ),
          ],
        ),
      ],
    );
  }
}
