import 'dart:math';

import 'package:flutter/material.dart';

class TDHomePerformancePage extends StatefulWidget {
  @override
  _TDHomePerformancePageState createState() => _TDHomePerformancePageState();
}

class _TDHomePerformancePageState extends State<TDHomePerformancePage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("123");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("消失了");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(0),
          sliver: SliverFixedExtentList(
            itemExtent: 100, //给一个高度
            delegate: SliverChildBuilderDelegate(
              (BuildContext ctx, int index) {
                return Container(
                  child: Text("当前是第${index}ge"),
                  color: Color.fromARGB(255, Random().nextInt(255),
                      Random().nextInt(255), Random().nextInt(255)),
                );
              },
              childCount: 5,
            ),
          ),
        ),
      ],
    );
  }
}
