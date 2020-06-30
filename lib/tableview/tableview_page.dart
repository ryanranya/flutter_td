import 'package:flutter/material.dart';
import 'package:fluttertd/tableview/tableview_tool.dart';

class RYTableViewPage extends StatefulWidget {
  @override
  _RYTableViewPageState createState() => _RYTableViewPageState();
}

class _RYTableViewPageState extends State<RYTableViewPage> {
  ListViewGroupHandler _groupHandler = ListViewGroupHandler(
        numberOfRowsInSection: (section){
        //  print(section);
        },
        cellForRowAtIndexPath: (index){
      //    print(index);
        },
    headerForSection: (section){
          return Container(
            child: Text('123'),
          );
    },
    header: (){
          return Container(
            height: 50,
            width: double.infinity,
            color: Colors.blue,
          );
    },
    footer: (){
          return Container(
            height: 50,
            width: double.infinity,
            color: Colors.green,
          );
    },
         numberOfSections: 10,


  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('探索TableView'),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index){
        return _groupHandler.cellAtIndex(index + 1);
      }),
    );
  }

}
