import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertd/api/page_request/home_list_request.dart';
import 'package:fluttertd/home/home_page_model/home_performance_model.dart';
import 'package:fluttertd/home/homewidget/search_button_widget.dart';
import 'package:fluttertd/home/homewidget/swiper_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertd/home/homewidget/td_home_bestpick.dart';
import 'package:fluttertd/home/homewidget/td_home_sectiontitle_item.dart';

class TDHomePerformancePage extends StatefulWidget {
  @override
  _TDHomePerformancePageState createState() => _TDHomePerformancePageState();
}

class _TDHomePerformancePageState extends State<TDHomePerformancePage>
    with AutomaticKeepAliveClientMixin {
  final List<String> imageURL = [
    "https://s2.showstart.com/img/2020/20200607/0207ba8ba9a3491e9ce35a14fadbfebf_1125_470_411438.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    "https://s2.showstart.com/img/2020/20200605/8c3446acc2994c5b8bc5d6875dd28748_1125_470_82685.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    "https://s2.showstart.com/img/2020/20200603/eea040021e1048bcb62ba0b6ff36e8ac_1125_470_505563.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    "https://s2.showstart.com/img/2020/20200528/3059c540acc24116a0fcd76dd8771dff_1125_470_440674.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    "https://s2.showstart.com/img/2020/20200605/07ba26032af3439c9a31160b2f8fe04d_1125_470_109949.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    "https://s2.showstart.com/img/2020/20200602/54caae29790641acbabf3e82b008138b_1594_666_184621.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    "https://s2.showstart.com/img/2020/20200522/a70a596b1f3f43368559b02b678aa652_1125_470_239863.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    "https://s2.showstart.com/img/2020/20200415/af279a5595c74b439f96492f0a96ad15_1125_450_274351.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    "https://s2.showstart.com/img/2020/20200412/75ec49022bc2403180e33ca61aa84f1e_1125_450_334113.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    "https://s2.showstart.com/img/2020/20200405/570219db04d7414cb387a41899c5411b_1125_450_148171.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425",
    'https://s2.showstart.com/img/2020/20200405/6a3c4c38e74547699e4fe0a6941d1d32_1125_450_465639.0x0.jpg?imageMogr2/thumbnail/!990x425r/gravity/Center/crop/!990x425'
  ];

  final List<Map<String, dynamic>> bastPickArray = [
    {
      "activityId": "5e274791e4b0318157f969a7",
      "poster":
          "https://s2.showstart.com/img/2020/20200527/df59c55fd2f44e24908891daf2069041_600_800_140573.0x0.jpg?imageMogr2/thumbnail/!350x500r/gravity/Center/crop/!350x500",
      "tags": [
        {"name": "#独立"}
      ],
      "title": "【Titillation Secrets】Colorful Bar彩色文胸成都专场"
    },
    {
      "activityId": "5e130f10e4b018807f011ab0",
      "poster":
          "https://s2.showstart.com/img/2020/20200315/a7ec98db65a1439fb3128d8defe922b0_600_800_134489.0x0.jpg?imageMogr2/thumbnail/!350x500r/gravity/Center/crop/!350x500",
      "tags": [
        {"name": "#独立"}
      ],
      "title": "【今日周五】呈现   肆囍/桃子假象/浪旅/胭脂"
    },
    {
      "activityId": "5e0972c3e4b076475cf20287",
      "poster":
          "https://s2.showstart.com/img/2020/20200317/a7fd5c8450464ccb9ae083e8f06865aa_600_800_142446.0x0.jpg?imageMogr2/thumbnail/!350x500r/gravity/Center/crop/!350x500",
      "tags": [
        {"name": "#独立"}
      ],
      "title": "【秀动呈献】「现场精神」法兹十周年限定专场 成都站"
    },
    {
      "activityId": "5ed00235e4b01c13093e1beb",
      "poster":
          "https://s2.showstart.com/img/2020/20200602/dfde265858204c3893e58d69a11d44f1_600_800_201702.0x0.jpg?imageMogr2/thumbnail/!350x500r/gravity/Center/crop/!350x500",
      "tags": [
        {"name": "#朋克 #独立"}
      ],
      "title": "【YOLII呈现】 麻园诗人＆钢心乐队New world New beer联合专场 成都站"
    },
    {
      "activityId": "5e096cbce4b08ba47ed13e0a",
      "poster":
          "https://s2.showstart.com/img/2020/20200302/a5660ba361e744e19cfed1bd8b67ebd2_600_800_208336.0x0.jpg?imageMogr2/thumbnail/!350x500r/gravity/Center/crop/!350x500",
      "tags": [
        {"name": "#独立"}
      ],
      "title": "【秀动呈献】时间不够以后「三月底的一次不切实际的梦」2020夏季巡演 成都站"
    }
  ];

  final List<HomePagePerformanceDataList> homePagePerformanceDataList = [];

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomePerformancePageList.requestHomePagePerformanceList(0).then((res){
      print("HomePage${res.result.dataList.length}");
      setState(() {
        homePagePerformanceDataList.addAll(res.result.dataList);
      });

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("消失了");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 60,
              pinned: false,
              flexibleSpace: SearchButtonItem()),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            sliver: SliverFixedExtentList(
              itemExtent: 140, //给一个高度
              delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
                  return SwiperPage(imageURL);
                },
                childCount: 1,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            sliver: SliverFixedExtentList(
              itemExtent: 40, //给一个高度
              delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
                  return TDHomePageSectionItem("home_title_pick");
                },
                childCount: 1,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 320,
              child: TDHomePageBestPick(bastPickArray),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            sliver: SliverFixedExtentList(
              itemExtent: 40, //给一个高度
              delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx, int index) {
                  return TDHomePageSectionItem("home_title_local");
                },
                childCount: 1,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(0),
            sliver: SliverFixedExtentList(
              itemExtent: 100, //给一个高度
              delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
                  return Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(homePagePerformanceDataList[index].avatar,height: 150,),
                      )

                    ],
                  );
                },
                childCount: homePagePerformanceDataList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
