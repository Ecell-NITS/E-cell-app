import 'package:ecell_app/configs/configurations/assets/asset.dart';
import 'package:flutter/material.dart';

import '../../../configs/configs.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(

      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: ecellBlue,
      leading: Image.asset(ecellLogo),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
