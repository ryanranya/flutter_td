import 'package:flutter/material.dart';

class TDFIBNumber extends StatefulWidget {
  static const String routName = "/found/fibnumber/fib_number";
  @override
  _TDFIBNumberState createState() => _TDFIBNumberState();
}

class _TDFIBNumberState extends State<TDFIBNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("斐波那契数"),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.of(context).pop();
        }),
      ),
      body: Center(
        child: Text("123123"),
      ),
    );
  }
}
