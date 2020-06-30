

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertd/found/fibnumber/curve_animatedCross.dart';

Handler curveanimatedHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parmas){
    print("================${parmas}");
    return CurveAnimatedCrossFadePage(parmas["title"].first);
  }

);