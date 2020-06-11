import 'package:flutter/material.dart';
import 'package:fluttertd/even_bus/evenbus.dart';
import 'package:fluttertd/even_bus/td_home_performance_evenbus.dart';
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
  double _searchButtonWidth = 10;
  double _searchButtonPaddingTop = 0;
  bool _isShowSearchIcon = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    _controller = AnimationController(vsync: this);
    _tabController = TabController(length: tabs.length, vsync: this);
//    evenBus.on<HomePagePerformanceEvenBus>().listen((scrollViewDistance) {
//      setState(() {
//
//      });
//    });
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
          padding: EdgeInsets.only(top: 30),
          child: Custom.TabBar(
            labelPadding: EdgeInsets.only(left: 20),
            controller: _tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black45,
            unselectedLabelStyle:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
//            Expanded(
//              child: Container(
//                height: 80,
//                padding: EdgeInsets.only(top: 30),
//                child: Container(
//                  color: Colors.white,
//                  width: 90,
//                  padding: EdgeInsets.only(right: 10),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.end,
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.only(right: 1),
//                        child: GestureDetector(
//                          onTap: (){
//                            print("点击了地址");
//                          },
//                          child: Row(
////                            mainAxisAlignment: MainAxisAlignment.end,
//                            children: <Widget>[
//                              Image.asset("assets/images/homepage/nav_address.png"),
//                              Text("成都",style: TextStyle(fontSize: 18),),
//                            ],
//                          ),
//                        ),
//                      ),
//                      Container(
//                        width: 40,
//                        padding: EdgeInsets.only(top: 0,right: 10),
//                        child: GestureDetector(
//                          onTap: (){
//                            print("点击了搜索按钮");
//                          },
//                          child: Image.asset("assets/images/homepage/nav_icon_search.png",width: 30,height: 30,),
//                        ),
//                      )
//                    ],
//                  ),
//                ),
//              ),
//            ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              TDHomePerformancePage(),
              TDHomeRaisePage(),
              TDHomeSurroundPage(),
            ],
          ),
        )
      ],
    );
  }
}
