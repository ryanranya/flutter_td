import 'package:flutter/material.dart';
import 'package:fluttertd/tabbar/td_bottom_bar_initialize_item.dart';

class TDMainTabbarPage extends StatefulWidget {
  @override
  _TDMainTabbarPageState createState() => _TDMainTabbarPageState();
}

class _TDMainTabbarPageState extends State<TDMainTabbarPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Colors.black,
        unselectedItemColor: Color.fromARGB(255, 130, 130, 133),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
            setState(() {
              _currentIndex = index;
            });
        },

      ),
    );
  }
}
