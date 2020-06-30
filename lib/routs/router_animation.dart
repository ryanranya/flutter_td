import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertd/animation/animated_container.dart';
import 'package:fluttertd/animation/animation_crossfade.dart';
import 'package:fluttertd/animation/animation_page.dart';

Handler animationHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parmas){
      return AnimationPage();
    }

);

Handler animatedContainerHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parmas){
    return RYAnimatedContainer();
  }
);

Handler animatedCrossFadeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parmas){
    return RYAnimationCrossfade();
  }
);