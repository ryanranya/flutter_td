import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertd/api/page_request/home_surround_list_request.dart';
import 'package:fluttertd/home/home_page_model/home_surround_model.dart';

class TDHomeSurroundPage extends StatefulWidget {
  @override
  _TDHomeSurroundPageState createState() => _TDHomeSurroundPageState();
}

class _TDHomeSurroundPageState extends State<TDHomeSurroundPage>
    with AutomaticKeepAliveClientMixin {
  final List<HomePageSurroundResult> _homePageSurroundResult = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeSurroundRequset.surroundPerformanceList(0).then((responce) {
      setState(() {
        _homePageSurroundResult.addAll(responce.result);
      });
    });
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
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              sliver: SliverFixedExtentList(
                itemExtent: 310,
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ImageView(_homePageSurroundResult[index]),
                        SizedBox(height: 10),
                        TitleLabel(_homePageSurroundResult[index]),
                        SizedBox(height: 10),
                        CentercountLabel(_homePageSurroundResult[index]),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            BottomLabelLeft(_homePageSurroundResult[index]),
                            BottomLabelRight(_homePageSurroundResult[index]),
                          ],
                        ),
                      ],
                    );
                  },
                  childCount: _homePageSurroundResult.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ImageView(HomePageSurroundResult homePageSurroundResult) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 200,
        child: Image.network(
          homePageSurroundResult.poster,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
//      child: ClipRRect(
//        borderRadius: BorderRadius.circular(8),
//        child: Image.network(
//          homePageSurroundResult.poster,
//          height: 150,
//        ),
//      ),
      ),
    );
  }

  Widget TitleLabel(HomePageSurroundResult homePageSurroundResult) {
    return Text(
      homePageSurroundResult.title,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget CentercountLabel(HomePageSurroundResult homePageSurroundResult) {
    return Row(
      children: <Widget>[
        InstructionsText("已筹", "￥${homePageSurroundResult.hadRaisedMoneny}"),
        Container(
          width: 1,
          margin: EdgeInsets.only(right: 15),
          height: 10,
          color: Colors.black12,
        ),
        InstructionsText("支持", homePageSurroundResult.supportNum.toString()),
        Container(
          margin: EdgeInsets.only(right: 15),
          width: 1,
          height: 10,
          color: Colors.black12,
        ),
        InstructionsText("天剩余", homePageSurroundResult.leftDay.toString()),
      ],
    );
  }

  Widget BottomLabelRight(HomePageSurroundResult homePageSurroundResult) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Container(
            child: Text(
              "众筹进度${homePageSurroundResult.percent}%>>",
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }

  Widget BottomLabelLeft(HomePageSurroundResult homePageSurroundResult) {
    return Row(
      children: <Widget>[
        Container(
          child: Text(
            homePageSurroundResult.raiseModelStatus == 1 ? "预售" : "普通",
            style: TextStyle(color: Colors.red, fontSize: 10),
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 1),
//                                color: Colors.red,
              borderRadius: BorderRadius.circular(2)),
          padding: EdgeInsets.only(left: 5, right: 5, bottom: 2),
        ),
        Container(
          child: Text(
            homePageSurroundResult.raiseTypeView,
            style: TextStyle(color: Colors.black54, fontSize: 12),
          ),
          padding: EdgeInsets.only(left: 6),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }

  Widget InstructionsText(String title, String content) {
    final TextStyle _instructionsTitleStyle = TextStyle(
      fontSize: 14,
    );
    final TextStyle _instructionsCountStyle =
        TextStyle(fontSize: 10, color: Colors.black26);
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Row(
        children: <Widget>[
          Text(
            "${content}",
            style: _instructionsTitleStyle,
          ),
          Text(
            title,
            style: _instructionsCountStyle,
          ),
        ],
      ),
    );
  }
}
