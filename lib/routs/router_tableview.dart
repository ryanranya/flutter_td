import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fluttertd/tableview/tableview_page.dart';

Handler tableViewHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parmas){
      return RYTableViewPage();
    }
);