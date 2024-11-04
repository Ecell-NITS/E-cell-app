import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/pages/events/widgets/event_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalScrollableStack extends StatefulWidget {
  @override
  _HorizontalScrollableStackState createState() =>
      _HorizontalScrollableStackState();
}

class _HorizontalScrollableStackState extends State<HorizontalScrollableStack> {
  final CarouselSliderController _scrollController = CarouselSliderController();

  void _scrollRight() {
    _scrollController.nextPage(
      duration: Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  void _scrollLeft() {
    _scrollController.previousPage(
      duration: Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     IconButton(
    //       icon: Icon(Icons.arrow_left),
    //       onPressed: _scrollLeft,
    //     ),
    //     // SizedBox(
    //     //   height: 400,
    //     //   width: ScreenUtil().screenWidth *
    //     //       0.72, // Ensure this matches the width of one card plus margin
    //     //   child: ListView.builder(
    //     //     scrollDirection: Axis.horizontal,
    //     //     controller: _scrollController,
    //     //     // physics: NeverScrollableScrollPhysics(), // Disable user scrolling
    //     //     itemCount: 10,
    //     //     itemBuilder: (context, index) {

    //     //     },
    //     //   ),
    //     // ),

    //     IconButton(
    //       icon: Icon(Icons.arrow_right),
    //       onPressed: _scrollRight,
    //     ),
    //   ],
    // );
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _scrollController,
          items: [
            EventCard(),
            EventCard(),
            EventCard(),
            EventCard(),
            EventCard(),
          ],
          options: CarouselOptions(
            height: 400,
            viewportFraction: 1.0,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlay: true,
            enlargeCenterPage: true,
          ),
        ),
        Positioned(
          bottom: 200,
          child: IconButton(
            icon: Icon(
              CupertinoIcons.back,
              color: Colors.white,
            ),
            onPressed: _scrollLeft,
            // label: Text(""),
          ),
        ),
        Positioned(
          bottom: 200,
          right: 0,
          child: IconButton(
            icon: Icon(
              CupertinoIcons.forward,
              color: Colors.white,
            ),
            onPressed: _scrollRight,
            // label: Text(""),
          ),
        ),
      ],
    );
  }
}
