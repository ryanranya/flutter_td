
import 'package:flutter/material.dart';
import 'package:fluttertd/found/fibnumber/curve_animatedCross.dart';
import 'package:fluttertd/found/fibnumber/fib_number.dart';
import 'package:fluttertd/search/search_page.dart';

class TDRouter{
  static final Map<String, WidgetBuilder> routers = {
    TDSearchPage.routName: (context) => TDSearchPage(),
    TDFIBNumber.routName: (context) => TDFIBNumber(),
    CurveAnimatedCrossFadePage.routName: (context) => CurveAnimatedCrossFadePage("12312"),
  };

}

