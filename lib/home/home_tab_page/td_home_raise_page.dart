import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertd/api/page_request/home_raise_list_request.dart';
import 'package:fluttertd/home/home_page_model/home_raise_model.dart';
import 'package:fluttertd/home/homewidget/td_home_sectiontitle_item.dart';

class TDHomeRaisePage extends StatefulWidget {
  @override
  _TDHomeRaisePageState createState() => _TDHomeRaisePageState();
}

class _TDHomeRaisePageState extends State<TDHomeRaisePage>
    with AutomaticKeepAliveClientMixin {
  final List<HomePageRaiseThemes> _homePageRaiseThemes = [];
  final List<HomePageRaiseHotGoods> _homePageRaiseHotGoods = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homePageRaiseThemes.addAll(HomeRaisePageList.requestRaisePerformanceList().result.themes);
    _homePageRaiseHotGoods.addAll(HomeRaisePageList.requestRaisePerformanceList().result.hotGoods);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 245, 245, 245),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 10),
            sliver: SliverFixedExtentList(
              itemExtent: 300, //给一个高度
              delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                                "assets/images/homepage/souvenir_toplogo_left.png"),
                            Image.asset(
                                "assets/images/homepage/souvenir_toplogo_right.png")
                          ],
                        ),
                        SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: double.infinity,
                            height: 230,
                            child: Stack(
                            alignment: Alignment.bottomLeft,
                              children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 230,
                                child:
                                Image.network(
                                    _homePageRaiseThemes[index].detailPath,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                top: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(90, 0, 0, 0),
                                          Color.fromARGB(90, 105, 105, 105),
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                bottom: 45,
                                child: Text(
                                  _homePageRaiseThemes[index].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                bottom: 20,
                                child: Text(
                                  _homePageRaiseThemes[index].subTitle,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              ],
                            ),
                          ),
                        )


                      ],
                    ),
                  );
                },
                childCount: _homePageRaiseThemes.length,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
            sliver: SliverFixedExtentList(
              itemExtent: 40, //给一个高度
              delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
                  return TDHomePageSectionItem("souvenir_title_hot_new");
                },
                childCount: 1,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
//                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              _homePageRaiseHotGoods[index].goodsPoster,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          _homePageRaiseHotGoods[index].goodsName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text("￥${_homePageRaiseHotGoods[index].price}",style: TextStyle(color: Colors.red,fontSize: 14),),
                      ],
                    ),
                  );
                },
                childCount: _homePageRaiseHotGoods.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75),
            ),
          ),
        ],
      ),
    );
  }
}
