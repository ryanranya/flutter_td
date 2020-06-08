import 'package:flutter/material.dart';
import 'package:fluttertd/routs/routs.dart';
import 'package:fluttertd/tabbar/td_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      路由跳转
      routes: TDRouter.routers,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: TDMainTabbarPage(),
    );
  }
}
