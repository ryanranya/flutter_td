

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fluttertd/search/search_page.dart';

Handler searchRouterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parmas){
      return TDSearchPage();
    }
);