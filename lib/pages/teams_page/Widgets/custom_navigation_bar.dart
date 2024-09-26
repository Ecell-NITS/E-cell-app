import 'package:flutter/material.dart';
import 'package:ecell_app/configs/configurations/extensions/screen_utils.dart';
import 'package:ecell_app/pages/teams_page/resources/Tabs.dart';

class CustomNavBar extends StatefulWidget {
  final Function changetab;
  final TabController tabController;

  const CustomNavBar(
      {required this.changetab, required this.tabController, super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  double rightarrow = 0, leftarrow = -35;
  late ScrollController _scrollController;
  String? _dropdownValue = '2024-25';
  int _selectedTabIndex = 0;

  @override
  void initState() {
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.addListener(() {
        if (_scrollController.position.atEdge) {
          if (_scrollController.position.pixels == 0) {
            setState(() {
              rightarrow = 0;
              leftarrow = -35;
            });
          } else {
            setState(() {
              rightarrow = -35;
              leftarrow = 0;
            });
          }
        } else {
          setState(() {
            rightarrow = 0;
            leftarrow = 0;
          });
        }
      });
    });
    widget.tabController.addListener(() {
      setState(() {
        _selectedTabIndex = widget.tabController.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollTabBar(int direction) {
    if (_scrollController.hasClients) {
      final newPosition = _scrollController.offset +
          _scrollController.position.maxScrollExtent * direction;
      _scrollController.animateTo(
        newPosition,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.sizeOf(context).height * 53 / 800,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          child: TabBar(
            indicatorWeight: 0.1,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            labelPadding: const EdgeInsets.all(10),
            indicatorColor: Colors.white,
            dividerHeight: 0,
            controller: widget.tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w800,
            ),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
            tabs: List.generate(
                tabsname.length,
                (index) {
                  if(index==2) {return Tab(
                      child: Row(
                        children: [
                          Text("CORE TEAM  ",
                            style: TextStyle(
                              color: const Color.fromRGBO(22, 39, 64, 1),
                              fontSize: ScreenUtil.defaultSize.width * 0.046,
                              fontWeight: _selectedTabIndex == 2 ? FontWeight.w800 : FontWeight.w400,
                            ),),
                          DropdownButton<String>(
                          onTap: (){
                            widget.tabController.animateTo(2);
                          },
                          value: _dropdownValue,
                          // Change text style based on whether this tab is selected or not
                          dropdownColor: Colors.white,
                          items: <String>['2024-25', '2023-24', '2022-23']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                style: TextStyle(
                                  color: const Color.fromRGBO(22, 39, 64, 1),
                                  fontSize: ScreenUtil.defaultSize.width * 0.046,
                                  fontWeight: _selectedTabIndex == 2 ? FontWeight.w800 : FontWeight.w400,
                                ),),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _dropdownValue = newValue;
                            });
                          },
                          underline: SizedBox(), // Removes the default underline
                          icon: Icon(Icons.arrow_drop_down, color: Colors.black,size: 30,),
                        ),]
                      ));}

                  return Tab(
                    child: Text(
                        tabsname[index],
                        style: TextStyle(
                            fontSize: ScreenUtil.defaultSize.width * 0.046,
                            color: const Color.fromRGBO(22, 39, 64, 1)),
                      ),
                  );}
                    ),
          ),
        ),
      ),
      AnimatedPositioned(
        duration: const Duration(milliseconds: 300),
        right: rightarrow,
        child: Container(
            width: 35,
            height: MediaQuery.sizeOf(context).height * 53 / 800,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: IconButton(
                onPressed: () {
                  scrollTabBar(1);
                  setState(() {
                    rightarrow = -35;
                    leftarrow = 0;
                  });
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Color.fromRGBO(22, 39, 64, 1),
                ))),
      ),
      AnimatedPositioned(
        duration: const Duration(milliseconds: 300),
        left: leftarrow,
        child: Container(
            width: 35,
            height: MediaQuery.sizeOf(context).height * 53 / 800,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: IconButton(
                onPressed: () {
                  scrollTabBar(-1);
                  setState(() {
                    leftarrow = -35;
                    rightarrow = 0;
                  });
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Color.fromRGBO(22, 39, 64, 1),
                ))),
      )
    ]);
  }
}
