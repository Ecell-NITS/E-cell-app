import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CollabPage extends StatelessWidget {
  const CollabPage({super.key});

  static const String routeName = "/collabsPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
