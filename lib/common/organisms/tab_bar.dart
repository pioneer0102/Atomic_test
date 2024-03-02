import 'package:flutter/material.dart';
import 'package:social_media_app/common/organisms/tabs/tab_content.dart';
import 'package:social_media_app/common/organisms/tabs/tab_details.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: const Color(0xFFDF5BFF),
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: const Color(0xFFDF5BFF),
          tabs: const [
            Tab(
              child: Text('Content'),
            ),
            Tab(
              child: Text('Details'),
            ),
            Tab(
              child: Text('Privacy'),
            )
          ]
        ),
        SizedBox(
          width: double.maxFinite,
          height: 650,
          child: TabBarView(
            controller: _tabController,
            children: const [
              TabContent(),
              TabDetails(),
              SizedBox()
            ],
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
