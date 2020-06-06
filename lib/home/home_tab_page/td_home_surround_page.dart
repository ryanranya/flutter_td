
import 'package:flutter/material.dart';

class TDHomeSurroundPage extends StatefulWidget {
  @override
  _TDHomeSurroundPageState createState() => _TDHomeSurroundPageState();
}

class _TDHomeSurroundPageState extends State<TDHomeSurroundPage> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("周边"),
      ),
    );
  }
}
