import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TDSearchText extends StatefulWidget {
  @override
  _TDSearchTextState createState() => _TDSearchTextState();
}

class _TDSearchTextState extends State<TDSearchText> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
//        decoration: BoxDecoration(
//          color: Colors.white,
//        border: Border.all(
//          color: Colors.black12,
//        ),
//          borderRadius: BorderRadius.all(Radius.circular(10)),
//        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 4),
                  hintText: "请输入内容",
                  prefixIcon: Icon(Icons.search,size: 30,color: Colors.black12,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
//                  filled: true,
                  fillColor: Colors.white,
                ),
//                decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(5.0),
//                    border: Border.all(
//                      color: Colors.blue,
//                      style: BorderStyle.solid,
//                      width: 2,
//                    )
//                ),
              ),
            ),
          ],
        ));
  }
}
