
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fluttertd/tableview/customscrollview.dart';

Handler customScrollViewHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parmas){
    return RYCustomScrollView();
  }

);