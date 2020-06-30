
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fluttertd/routs/application.dart';
import 'package:fluttertd/routs/td_routers.dart';

class AnimationPageRoutView{
  static rout(int index, BuildContext context){

    switch (index){
      case 0:
        Application.router.navigateTo(context, Routers.animatedContainerPage,transition: TransitionType.native);
        break;

      case 1:
        Application.router.navigateTo(context, Routers.animatedCrossFadePage,transition: TransitionType.native);
        break;

      default:
        break;
    }

  }

}