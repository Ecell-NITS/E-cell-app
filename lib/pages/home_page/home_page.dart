import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:ecell_app/configs/configs.dart';

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
    return const Scaffold(appBar: CustomAppBar());
  }
}
