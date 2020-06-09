

import 'package:flutter/material.dart';
import 'package:fluttertd/home/home_page_model/home_performance_model.dart';

class TDHomePerformanceLocalevent extends StatelessWidget {

  HomePagePerformanceDataList homePagePerformanceDataList;
  TDHomePerformanceLocalevent(this.homePagePerformanceDataList);

  String style = "";
  @override
  Widget build(BuildContext context) {
      homePagePerformanceDataList.styles.forEach((element) {
      style = element;
    });
    return ListView();
  }

  Widget ListView(){
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              homePagePerformanceDataList.avatar,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20, top: 10),
                child: Text(
                  homePagePerformanceDataList.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${homePagePerformanceDataList.city}  ${homePagePerformanceDataList.siteName}",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    color: Color.fromARGB(255, 211, 211, 211),
                    fontSize: 13),
              ),
              SizedBox(height: 10),
              Text(
                homePagePerformanceDataList.showTime,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    color: Color.fromARGB(255, 211, 211, 211),
                    fontSize: 13),
              ),
              SizedBox(height: 10),
              Text(
                "#${style}",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    color: Color.fromARGB(255, 211, 211, 211),
                    fontSize: 13),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(),
                child: homePagePerformanceDataList
                    .activityPrice
                    .endsWith("起")
                    ? Row(
                  children: <Widget>[
                    Text(
                      "${homePagePerformanceDataList.activityPrice.split("起")[0]}",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "FjallaOne",
                          color: Colors.red),
                    ),
                    Text(
                      "起",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                )
                    : Text(
                  homePagePerformanceDataList
                      .activityPrice,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "FjallaOne",
                      color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

}
