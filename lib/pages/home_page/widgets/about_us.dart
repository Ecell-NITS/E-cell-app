import 'package:ecell_app/configs/configs.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Text(
              "About Us",
              style: TextStyle(
                fontSize: ScreenUtil.defaultSize.width * 0.07,
              ),
            ),
            const Text(
              "E-Cell, NIT Silchar is a non-profit student-run organization promoting and nurturing the entrepreneurial spirit among students. It offers pre-incubation facilities to startups and encourages students to work on their ideas through events. E-Cell ' s mission is to improve the culture of entrepreneurship in technical and non-technical fields and uplift students to innovate and develop their models. Its objective is to develop the spirit of entrepreneurship by providing various programs and events such as Srijan to educate students on financial literacy, real-world problem-solving skills, and event management.",
              textAlign: TextAlign.justify,
            ),
          ].separate(30),
        ),
        Positioned(
          top: 8,
          left: 40,
          child: Container(
            width: 22,
            height: 22,
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
