import 'package:flutter/cupertino.dart';
import 'package:fluttertd/found/td_found.dart';
import 'package:fluttertd/home/td_home.dart';
import 'package:fluttertd/message/td_message.dart';
import 'package:fluttertd/mine/td_mine.dart';
import 'package:fluttertd/tabbar/td_bottom_bar_item.dart';

List<TDBottomBarItem> items = [
  TDBottomBarItem("tab3_icon_home", "tab3_icon_home_highlight", "首页"),
  TDBottomBarItem("tab3_icon_find", "tab3_icon_find_highlight", "发现"),
  TDBottomBarItem("tab3_icon_msg", "tab3_icon_msg_highlight", "消息"),
  TDBottomBarItem("tab3_icon_mine", "tab3_icon_mine_highlight", "我的"),
];

List<Widget> pages = [
  TDHomePage(),
  TDFoundPage(),
  TDMessagePage(),
  TDMinePage(),
];
