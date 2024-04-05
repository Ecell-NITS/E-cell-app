import 'dart:async';

import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/configs/configurations/assets/asset.dart';
import 'package:ecell_app/pages/home_page/utils/icon_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Moto extends StatelessWidget {
  Moto({super.key});

  // late Timer? _timer;

  // void triggerNext(BuildContext context) {
  //   _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
  //     Provider.of<IconProvider>(context, listen: false).nextIcon();
  //   });
  // }

  // @override
  // void dispose() {
  //   _timer.cancel();
  // }

  @override
  Widget build(BuildContext context) {
    // triggerNext(context);
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
                    Consumer<IconProvider>(
                      builder: (context, iconProvider, _) {
                        return AnimatedSwitcher(
                          duration: Duration(seconds: 2),
                          child: Image.asset(
                            iconProvider.currentImagePath,
                            width: ScreenUtil.defaultSize.width * 0.3,
                          ),
                        );
                      },
                    ),
                    // Image.asset(
                    //   ecellLogo,
                    //   width: ScreenUtil.defaultSize.width * 0.3,
                    // ),
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
      ],
    );
  }
}
