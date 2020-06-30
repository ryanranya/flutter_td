
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fluttertd/routs/application.dart';
import 'package:fluttertd/routs/td_routers.dart';
import 'package:fluttertd/search/search_page.dart';

class SearchButtonItem extends StatefulWidget {
  @override
  _SearchButtonItemState createState() => _SearchButtonItemState();
}

class _SearchButtonItemState extends State<SearchButtonItem> {
  @override
  Widget build(BuildContext context) {
    return searchButton();
  }

  Widget searchButton() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245,245,245),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(left: 20,right: 20),
      child: ButtonTheme(
        minWidth: double.infinity - 40,
        height: 40,
        child: FlatButton(
//          去掉水波纹效果
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () => clickSearchButton(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/images/homepage/search_icon.png",
                width: 30,
                height: 30,
              ),
              Text(
                "想要找什么?",
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void clickSearchButton(BuildContext context) {
//    Navigator.of(context).pushNamed(TDSearchPage.routName, arguments: "123");
//  Navigator.of(context).push(MaterialPageRoute(builder: (context){
//    return TDSearchPage();
//  },
//    fullscreenDialog: true,
//  ));
    Application.router.navigateTo(context, Routers.searchPage,transition: TransitionType.nativeModal);

  }
}
