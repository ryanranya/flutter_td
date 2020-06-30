import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurveAnimatedCrossFadePage extends StatelessWidget {
  final String navigationTitle;
  CurveAnimatedCrossFadePage(this.navigationTitle);

  static const String routName = "/found/fibnumber/curve_animatedCross";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.pop(context,"传递参数回去");
        }),
        title: Text(navigationTitle),
      ),
      body: CurveAnimatedCrossFade(),
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
    return Center(
      child: Wrap(
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
//        _buildSwitch1(),
        ],
      ),
    );
  }

//  Widget _buildSwitch() => Switch(value: isFirst, onChanged: (v){
//    setState(() {
//      _crossFadeState= v?CrossFadeState.showFirst:CrossFadeState.showSecond;
//    });
//  });

  Widget _buildSwitch() => CupertinoSwitch(value: isFirst, onChanged: (value){
    setState(() {
      _crossFadeState= value?CrossFadeState.showFirst:CrossFadeState.showSecond;
    });
  });

}
