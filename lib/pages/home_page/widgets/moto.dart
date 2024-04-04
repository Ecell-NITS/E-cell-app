import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/configs/configurations/assets/asset.dart';
import 'package:flutter/material.dart';

class Moto extends StatelessWidget {
  const Moto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Text(
              "Moto",
              style: TextStyle(
                fontSize: ScreenUtil.defaultSize.width * 0.07,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [
                    Colors.grey,
                    Color.fromARGB(255, 23, 23, 23),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    Image.asset(
                      ecellLogo,
                      width: ScreenUtil.defaultSize.width * 0.3,
                    ),
                    const Text(
                      "Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                      textAlign: TextAlign.justify,
                    ),
                  ].separate(20),
                ),
              ),
            )
          ].separate(20),
        ),
        Positioned(
          top: 11,
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
        // Positioned(
        //   top: 0,
        //   right: -20,
        //   child: Container(
        //     width: 40,
        //     height: 40,
        //     decoration: const BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: ecellBlue,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
