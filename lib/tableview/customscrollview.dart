
import 'package:flutter/material.dart';

class RYCustomScrollView extends StatelessWidget {

  Widget headerView(String title){
    return SliverToBoxAdapter(
        child: Container(
          child: Row(
            children: <Widget>[
              Icon(Icons.android),
              Text(title),
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomScrollView"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          headerView("这是header"),
          SliverGrid.count(crossAxisCount: 4,children: <Widget>[

          ],)
        ],
      ),
    );
  }
}
