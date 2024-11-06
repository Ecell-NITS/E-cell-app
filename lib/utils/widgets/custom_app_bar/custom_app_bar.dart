import 'package:ecell_app/controllers/controllers.dart';
import 'package:ecell_app/pages/pages.dart';
import 'package:flutter/material.dart';

import '../../../configs/configs.dart';

final Map<String, Widget> pages = {
  "ABOUT US": const HomePage(),
  "COLLABS": const CollabPage(),
  "TEAMS": const TeamsPage(),
  "RESOURCES": const ResourcePage(),
  "PROFILE": const ProfilePage()
};

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget appBarText;
  const CustomAppBar({super.key, required this.appBarText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: appBarText,  // Directly using appBarText
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: ecellBlue,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).push(CustomPageRoute(
              child: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            color: const Color.fromRGBO(14, 54, 105, 1),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [const SizedBox(height: 20,),
                  IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.close, color: Colors.white, size: 30)),
                  Column(
                    children: pages.keys
                        .map((e) => TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => pages[e]!));
                            },
                            child: Text(
                              e,
                              style: const TextStyle(color: Colors.white,
                              fontSize: 26),
                            )))
                        .toList().separate(40),
                  )
                ].separate(40),
              ),
            ),
          )));
        },
        icon: const Icon(
          Icons.menu,
          size: 30,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
