

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertd/routs/router_animation.dart';
import 'package:fluttertd/routs/router_curveanimated.dart';
import 'package:fluttertd/routs/search_pagerouter.dart';

class Routers{
  static String root = '/';
//  curveanimated 动画页面
  static String curveanimatedPage = '/curve_animatedCross';
//  搜索页面
  static String searchPage = '/search_page';
//  动画页面
  static String animationPage = '/animation_page';
//  AnimatedContainer动画页面
  static String animatedContainerPage = '/animated_container';
  // AnimatedCrossFade  动画
  static String animatedCrossFadePage = '/animation_crossfade';


  static void configureRoutes(Router router){
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context,Map<String,List<String>> parmas){
//        没有页面，就是跳转失败
      debugPrint("没有页面呀卧槽");
      return NODataPage();
      }
    );

    router.define(curveanimatedPage, handler: curveanimatedHandler);

    //搜索页面
    router.define(searchPage, handler: searchRouterHandler);

    //动画页面
    router.define(animationPage, handler: animationHandler);

    //animatedContainer动画页面
    router.define(animatedContainerPage, handler: animatedContainerHandler);

//    AnimatedCrossFade 动画
    router.define(animatedCrossFadePage, handler: animatedCrossFadeHandler);
  }

}

class NODataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("请检查一下路由老弟"),
      ),
      body: Center(
        child: Text(
          "糟糕！跳转页面的出问题了",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),
    );
  }
}
