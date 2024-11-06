import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResourcePage extends StatefulWidget {
  const ResourcePage({super.key});

  static const String routeName = '/ResourcePage';

  @override
  State<ResourcePage> createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(_updateIndicatorPosition);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _tabController.removeListener(_updateIndicatorPosition);
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _updateIndicatorPosition() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: Text('Resources'),
      ),
      body: Column(
        children: [
          Expanded(
            child: NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Opacity(
                              opacity: 0.8,
                              child: Image.asset(
                                'assets/images/resources.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Text(
                              'Resources',
                              style: TextStyle(
                                fontSize: ScreenUtil.defaultSize.width * 0.12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'When Elon Musk was asked how he learned to build rockets he gave a simple and striking answer: “I read books.”',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: ScreenUtil.defaultSize.width * 0.045,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      controller: _tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Color(0xFF003366),
                      tabs: [
                        Tab(text: 'Books'),
                        Tab(text: 'Movies'),
                        Tab(text: 'Blogs'),
                      ],
                    ),
                  ),
                ),
              ],
              body: GridView.builder(
                padding: EdgeInsets.all(0), // Remove padding
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0.0, // Ensure borders touch
                  crossAxisSpacing: 0.0, // Ensure borders touch
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/reimage1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Footer: Always visible and no gap between it and the grid
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 100.0, // Fixed width for the footer container
                height: 40.0,
                child: Stack(
                  children: [
                    // Background line
                    Container(
                      color: Colors.grey[300],
                      height: 6.0,
                    ),
                    // Slider indicating selected tab
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 300),
                      left: _tabController.index *
                          (100.0 / 3), // Adjust based on container width
                      child: Container(
                        width: 34.0, // Smaller width for the slider
                        height: 6.0,
                        color: Color(0xFF003366),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// SliverAppBarDelegate for the pinned TabBar
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
