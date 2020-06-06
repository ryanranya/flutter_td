
import 'package:flutter/material.dart';

class TDHomeRaisePage extends StatefulWidget {
  @override
  _TDHomeRaisePageState createState() => _TDHomeRaisePageState();
}

class _TDHomeRaisePageState extends State<TDHomeRaisePage> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("众筹"),
      ),
    );
  }
}
