

import 'package:flutter/material.dart';

class RYAnimatedContainer extends StatefulWidget {
  @override
  _RYAnimatedContainerState createState() => _RYAnimatedContainerState();
}

class _RYAnimatedContainerState extends State<RYAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: AnimatedContainerWidget(),
    );
  }
}

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("点击查看效果",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            animationContainer(),
          ],
        ),
      ),
    );
  }
  Widget animationContainer(){
    return AnimatedContainer(
      width: selected ? 200.0 : 100.0,
      height: selected ? 100.0 : 200.0,
      alignment:
      selected ? Alignment.center : AlignmentDirectional.topCenter,
      decoration: BoxDecoration(
        border: selected ? Border.all(color: Colors.lightBlueAccent,width: 1) : Border.all(color: Colors.amber,width: 5),
        color: selected ? Colors.red : Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      child:  FlutterLogo(size: 75),
    );
  }
}

