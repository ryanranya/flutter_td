import 'package:flutter/material.dart';
import 'package:flutter_tableview/flutter_tableview.dart';
import 'package:fluttertd/tableview/tableview_tool.dart';

class RYTableViewPage extends StatefulWidget {
  @override
  _RYTableViewPageState createState() => _RYTableViewPageState();
}

class _RYTableViewPageState extends State<RYTableViewPage> {
  // How many section.
  int sectionCount = 3;

  // Get row count.
  int _rowCountAtSection(int section) {
    if (section == 0) {
      return 5;
    } else if (section == 1) {
      return 10;
    } else {
      return 20;
    }
  }

  // Section header widget builder.
  Widget _sectionHeaderBuilder(BuildContext context, int section) {
    return InkWell(
      onTap: () {
        print('click section header. -> section:$section');
      },
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16.0),
        color: Color.fromRGBO(220, 220, 220, 1),
        height: 100,
        child: Text('I am section header -> section:$section'),
      ),
    );
  }

  // cell item widget builder.
  Widget _cellBuilder(BuildContext context, int section, int row) {
    return InkWell(
      onTap: () {
        print('click cell item. -> section:$section row:$row');
      },
      child: Container(
        padding: EdgeInsets.only(left: 16.0),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(240, 240, 240, 1),
                ))),
        height: 50.0,
        child: Text('I am cell -> section:$section  row$row'),
      ),
    );
  }

  // Each section header height;
  double _sectionHeaderHeight(BuildContext context, int section) {
    return 50.0;
  }

  // Each cell item widget height.
  double _cellHeight(BuildContext context, int section, int row) {
    return 50.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('探索TableView'),
      ),
      body: Container(
          child: FlutterTableView(
            sectionCount: sectionCount,
            rowCountAtSection: _rowCountAtSection,
            sectionHeaderBuilder: _sectionHeaderBuilder,
            cellBuilder: _cellBuilder,
            sectionHeaderHeight: _sectionHeaderHeight,
            cellHeight: _cellHeight,
            shrinkWrap: true,
          ),
        )
    );
  }
}
