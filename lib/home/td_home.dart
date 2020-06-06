import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertd/home/homewidget/td_home_content.dart';

class TDHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: TDHomePageContent(),
      ),
    );
  }
}
