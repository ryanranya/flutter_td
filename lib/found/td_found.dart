import 'package:flutter/material.dart';
import 'package:fluttertd/found/fibnumber/fib_number.dart';

class TDFoundPage extends StatelessWidget {
  static List<String> dataSource = ["斐波那契数(0,1,1,2,3,5,8...)","二叉树"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发现'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(TDFIBNumber.routName, arguments: "123");
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.add),
                            Text(
                              dataSource[index],
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(Icons.chevron_right),),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                  ),
                )
              ],
            ),
          );
        },
        itemCount: dataSource.length,
      ),
    );
  }
}
