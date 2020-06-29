import 'package:flutter/material.dart';

const CITY_NAMES = {
  '北京':['东城区','西城区','海淀区','朝阳区','石景山区','顺义区'],
  '上海':['黄浦区','徐汇区','长宁区','静安区','普陀区','闸北区'],
  '广州':['越秀','海珠','荔湾','天河','白云','黄埔','南沙'],
  '深圳':['南山','福田','罗湖','盐田','龙岗','宝安','龙华'],
  '杭州':['上城区','下城区','江干区','拱墅区','西湖区','滨江区'],
  '苏州':['姑苏区','吴中区','相城区','高新区','虎丘区','工业园区','吴江区'],
};

class TDFoundPage extends StatelessWidget {
  static List<String> dataSource = ["斐波那契数(0,1,1,2,3,5,8...)", "二叉树"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('发现'),
      ),
//      body: ListView.builder(
//        itemBuilder: (BuildContext context, int index) {
//          return _buildList(),
//        },
//        itemCount: dataSource.length,
//      ),
    body: CurveAnimatedCrossFade(),
    );
  }

  List<Widget> _buildList(){
    List<Widget> widgets = [];
    CITY_NAMES.keys.forEach((key){
      widgets.add(_item(key, CITY_NAMES[key]));
    });
    return widgets;
  }
  Widget _item(String city,List<String> subCities){
    return AnimatedCrossFade(
//      title: Text(
//        city,
//        style: TextStyle(color: Colors.black54,fontSize: 20),
//      ),
//      children: subCities.map((subCity)=>_buildSub(subCity)).toList(),
    );
  }

  Widget _buildSub(String subCity){
    //可以设置撑满宽度的盒子 称之为百分百布局
    return FractionallySizedBox(
      //宽度因子 1为百分百撑满
      widthFactor: 1,
      child: Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Text(subCity),
      ),
    );
  }
}

class CurveAnimatedCrossFade extends StatefulWidget {
  @override
  _CurveAnimatedCrossFadeState createState() => _CurveAnimatedCrossFadeState();
}

class _CurveAnimatedCrossFadeState extends State<CurveAnimatedCrossFade> {
  var _crossFadeState = CrossFadeState.showFirst;

  bool get isFirst=> _crossFadeState == CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Container(
          child: AnimatedCrossFade(
            firstCurve: Curves.easeInCirc,
            secondCurve: Curves.easeInToLinear,
            sizeCurve: Curves.bounceOut,
            firstChild: Container(
              alignment: Alignment.center,
              width: 200,
              height: 80,
              color: Colors.orange  ,
              child: FlutterLogo(colors: Colors.blue,size: 50,),
            ),
            secondChild: Container(
              width: 200,
              height: 150,
              alignment: Alignment.center,
              color: Colors.blue,
              child: FlutterLogo(
                textColor: Colors.white,
                colors: Colors.orange,size: 100,style: FlutterLogoStyle.stacked,),
            ),
            duration: Duration(milliseconds: 1000),
            crossFadeState: _crossFadeState,
          ),
        ),
        _buildSwitch(),
      ],
    );
  }

  Widget _buildSwitch() => Switch(value: isFirst, onChanged: (v){
    setState(() {
      _crossFadeState= v?CrossFadeState.showFirst:CrossFadeState.showSecond;
    });
  });
}
