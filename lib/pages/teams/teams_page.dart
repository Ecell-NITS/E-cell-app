import 'package:ecell_app/pages/teams/Widgets/member_card.dart';
import 'package:ecell_app/pages/teams/resources/Tabs.dart';
import 'package:ecell_app/pages/teams/resources/assets.dart';
import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/pages/teams/Widgets/custom_navigation_bar.dart';
import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:contentsize_tabbarview/contentsize_tabbarview.dart';
import 'package:flutter_scroll_to_top/flutter_scroll_to_top.dart';

class TeamsPage extends StatefulWidget {
  const TeamsPage({super.key});
  static const String routeName = '/TeamsRoute';

  @override
  State<TeamsPage> createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> with TickerProviderStateMixin {
  int currentTab = 0;
  late final TabController tabController;

  void changeTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        appBarText: Text('data'),
      ),
      body: ScrollWrapper(
        promptAlignment: const Alignment(1,0.95),
        promptTheme: const PromptButtonTheme(
          color: Colors.white,
          icon: Icon(Icons.keyboard_double_arrow_up, color: Color.fromRGBO(22,39,64,1),
            )
        ),
        enabledAtOffset: 200,
        alwaysVisibleAtOffset: true,
        builder: (context,properties) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Stack(alignment: Alignment.center, children: [
                    Row(children: [
                      Stack(children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              team1,
                              width: MediaQuery.sizeOf(context).width * 0.65,
                              // fit: BoxFit.fitWidth,
                            ),
                          ],
                        ),
                        Positioned.fill(
                          child: Container(
                            color: const Color.fromRGBO(14, 54, 105, 0.39),
                          ),
                        )
                      ]),
                    ]),
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "MEET ",
                            style: TextStyle(
                                fontSize: MediaQuery.sizeOf(context).width * 0.09,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(width: 3, color: Colors.white))),
                            child: Text(
                              "OUR EXCELLENT",
                              style: TextStyle(
                                fontSize: MediaQuery.sizeOf(context).width * 0.06,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(width: 3, color: Colors.white))),
                        child: Text(
                          "TEAM MEMBERS",
                          style: TextStyle(
                            fontSize: MediaQuery.sizeOf(context).width * 0.06,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ])
                  ]),
                ),
                CustomNavBar(
                  changetab: changeTab,
                  tabController: tabController,
                ),
                ContentSizeTabBarView(
                    controller: tabController,
                    children: List.generate(
                        tabsname.length,
                        (index) => GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                              itemCount: 9,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 35),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 142 / 207,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 17,
                                crossAxisCount: ((MediaQuery.sizeOf(context).width/ScreenUtil.defaultSize.width)*2).toInt(),
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return const MemberCard(
                                  name: "NAME",
                                  designation: "Designation",
                                  img: team2,
                                );
                              },
                            )
                    ))],
            ),
          );
        }
      ),
    );
  }
}
