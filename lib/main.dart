import 'dart:io';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertd/routs/application.dart';
import 'package:fluttertd/routs/routs.dart';
import 'package:fluttertd/routs/td_routers.dart';
import 'package:fluttertd/tabbar/td_bottom_bar.dart';

void main() {
  // 注册 fluro routes
  final router = Router();
  Routers.configureRoutes(router);
  Application.router = router;

  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      路由跳转
//      routes: TDRouter.routers,
//    生产路由
      onGenerateRoute: Application.router.generator,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: TDMainTabbarPage(),
    );
  }
}
