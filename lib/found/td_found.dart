import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertd/found/datas/pagerouteview.dart';
import 'package:fluttertd/found/datas/widget_data.dart';

class TDFoundPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('组件'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return contentCell(context,index);
      }, itemCount: WidgetData.contentDataSourceDic.length,),
    );
  }
  Widget contentCell(BuildContext context,int index) {
    TextStyle nameTextStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,);
    TextStyle desTextStyle = TextStyle(
      fontSize: 17,color: Colors.black45,);
    return InkWell(
      onTap: () {
        PageRoutView.rout(index, context);
//        Application.router
//            .navigateTo(context, '/detail?id=${value['goodsId']}',transition: TransitionType.native);
      },
      child: Container(
        child: Column(
          children: <Widget>[

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10,top: 10),
                    child: Image.network(WidgetData.contentDataSourceDic[index]["imageURL"],height: 120,)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(WidgetData.contentDataSourceDic[index]["name"],style: nameTextStyle,),
                        SizedBox(height: 15,),
                        Text(WidgetData.contentDataSourceDic[index]["des"],style: desTextStyle,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        SizedBox(height: 15,),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "难度系数: ",style: TextStyle(fontSize: 14,color: Colors.black)),
                              TextSpan(text: WidgetData.contentDataSourceDic[index]["leavel"].toString(),style: TextStyle(color: Colors.red,fontSize: 14)),
                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
          ],
        ),
      ),
    );
  }

}

