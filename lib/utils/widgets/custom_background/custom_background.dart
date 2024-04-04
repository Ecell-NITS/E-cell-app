import 'package:ecell_app/configs/configs.dart';
import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, required this.bodyWidget});
  final Widget bodyWidget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -40,
          left: 242,
          child: Container(
            width: 227,
            height: 227,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ecellBlue,
            ),
          ),
        ),
        Positioned(
          top: -40,
          left: 197,
          child: Container(
            width: 116,
            height: 116,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: lightBlue,
            ),
          ),
        ),
        Positioned(
          top: 672,
          left: -94,
          child: Container(
            width: 227,
            height: 227,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: lightBlue,
            ),
          ),
        ),
        Positioned(
          top: 710,
          left: 60,
          child: Container(
            width: 116,
            height: 116,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ecellBlue,
            ),
          ),
        ),
        bodyWidget,
      ],
    );
  }
}
