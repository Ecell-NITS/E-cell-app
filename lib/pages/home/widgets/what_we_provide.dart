import 'package:carousel_slider/carousel_slider.dart' as carousal;
import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/configs/configurations/assets/asset.dart';
import 'package:ecell_app/configs/configurations/extensions/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhatWeProvide extends StatelessWidget {
  const WhatWeProvide({super.key});

  @override
  Widget build(context) {
    return Stack(
      children: [
        Column(
          children: [
            Text(
              "What We Provide?",
              style: TextStyle(
                fontSize: ScreenUtil.defaultSize.width * 0.07,
              ),
            ),
            Stack(
              children: [
                carousal.CarouselSlider(
                  items: [
                    Image.asset(wwp1),
                    Image.asset(wwp2),
                    Image.asset(wwp3),
                  ],
                  options: carousal.CarouselOptions(
                    viewportFraction: 1.0,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlay: true,
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    width: ScreenUtil.defaultSize.width * 0.28,
                    height: 220.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: ScreenUtil.defaultSize.width * 0.28,
                    height: 220.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 8,
          right: 40,
          child: Container(
            width: 18,
            height: 18,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: lightBlue,
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: -20,
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ecellBlue,
            ),
          ),
        ),
      ],
    );
  }
}
