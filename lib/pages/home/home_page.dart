import 'package:ecell_app/pages/home/widgets/about_us.dart';
import 'package:ecell_app/pages/home/widgets/moto.dart';
import 'package:ecell_app/pages/home/widgets/what_we_provide.dart';
import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ecell_app/configs/configs.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  //route
  static const String routeName = '/homeRoute';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: Text('data'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 58.0),
              child: WhatWeProvide(),
            ),
            Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: AboutUs(),
                ),
                Positioned(
                  top: 0,
                  left: -20,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ecellBlue,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: Moto(),
                ),
                Positioned(
                  top: 0,
                  right: -20,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ecellBlue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ].separate(50),
        ),
      ),
    );
  }
}
