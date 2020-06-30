import 'package:flutter/material.dart';

class RYAnimationCrossfade extends StatefulWidget {
  @override
  _RYAnimationCrossfadeState createState() => _RYAnimationCrossfadeState();
}

class _RYAnimationCrossfadeState extends State<RYAnimationCrossfade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationCrossfade"),
      ),
      body: AnimationCrossfadeWidget(),
    );
  }
}

class AnimationCrossfadeWidget extends StatefulWidget {
  @override
  _AnimationCrossfadeWidgetState createState() =>
      _AnimationCrossfadeWidgetState();
}

class _AnimationCrossfadeWidgetState extends State<AnimationCrossfadeWidget> {
  bool selected = false;

  void _animating() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _animating,
      child: Center(
        child: AnimatedCrossFade(
            firstChild: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: Text(
                "123",
                style: TextStyle(fontSize: 16,color: Colors.black),
              ),
              width: 200,
              height: 200,
            ),
            secondChild: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Center(
                child: Text(
                  "456",
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
              width: 200,
              height: 200,
            ),
            crossFadeState: selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 500)),
      ),
    );
  }
}
