import 'package:flutter/material.dart';
import 'package:fluttertd/home/home_tab_page/td_home_performance_page.dart';
import 'package:fluttertd/home/home_tab_page/td_home_raise_page.dart';
import 'package:fluttertd/home/home_tab_page/td_home_surround_page.dart';
import 'package:fluttertd/tools/td_tabs.dart' as Custom;

class TDHomePageContent extends StatefulWidget {
  @override
  _TDHomePageContentState createState() => _TDHomePageContentState();
}

class _TDHomePageContentState extends State<TDHomePageContent>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> tabs = ['演出', '周边', '众筹'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 80,
          color: Colors.white,
          padding: EdgeInsets.only(top: 30,left: 0),
          child: Custom.TabBar(
            labelPadding: EdgeInsets.only(left: 20),
            controller: _tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black45,
            unselectedLabelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            indicatorWeight: 3.0,
            isScrollable: true,
            indicatorPadding: EdgeInsets.only(bottom: 5),
            tabs: tabs.map((tab) {
              return Tab(
                text: tab,
              );
            }).toList(),
          ),
        ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              TDHomePerformancePage(),
              TDHomeSurroundPage(),
              TDHomeRaisePage(),
            ],

          ),
        )
      ],
    );
  }
}
