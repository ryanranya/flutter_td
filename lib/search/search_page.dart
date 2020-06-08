
import 'package:flutter/material.dart';

class TDSearchPage extends StatefulWidget {

  static const String routName = "/search/search_page";

  @override
  _TDSearchPageState createState() => _TDSearchPageState();
}

class _TDSearchPageState extends State<TDSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Text("搜索"),

    );
  }
}
