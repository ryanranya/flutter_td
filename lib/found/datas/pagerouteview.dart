

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fluttertd/found/datas/widget_data.dart';
import 'package:fluttertd/routs/application.dart';
import 'package:fluttertd/routs/td_routers.dart';

class PageRoutView{
    static rout(int index, BuildContext context){
      String title = WidgetData.contentDataSourceDic[index]["name"];
      print(title);
    switch (index){
      case 0:
        Application.router.navigateTo(context, Routers.curveanimatedPage + "?title=$title",transition: TransitionType.native).then((parmas){
          debugPrint(parmas);
        });
        break;

      case 1:
        Application.router.navigateTo(context, Routers.animationPage,transition: TransitionType.native);
        break;

      default:
        break;
    }

  }

}