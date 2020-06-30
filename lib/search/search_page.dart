
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TDSearchPage extends StatefulWidget {
  static const String routName = "/search/search_page";

  @override
  _TDSearchPageState createState() => _TDSearchPageState();
}

class _TDSearchPageState extends State<TDSearchPage> with WidgetsBindingObserver {


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state.toString());
  }

  @override
  Widget build(BuildContext context) {
    print(getfibolaqieNumber2(10));
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        appBar: AppBar(title: Text("搜索一下"),),
        body: Column(
          children: <Widget>[
            SearchBar(),
            TextField(
              
            )

          ],
        ),

      ),
    );
  }

  int getfibolaqieNumber1(int number){
    if (number <= 1) return number;
    return getfibolaqieNumber1(number - 1) + getfibolaqieNumber1(number - 2);
  }

  int getfibolaqieNumber2(int number){
    if (number <= 1) return number;
    int firstNumber = 0;
    int second = 1;
    for (int i = 0; i < (number - 1); i++){
      int sum = firstNumber + second;
      firstNumber = second;
      second = sum;
      print("$number,$firstNumber,$second");
    }
    return second;
  }

  Widget SearchBar(){
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 70,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 25, 70, 10),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 245,245,245),
        ),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 8),
              child: Image.asset(
                "assets/images/homepage/search_icon.png",
                width: 30,
                height: 30,
              ),
            ),
            Container(
              color: Colors.red,
              width: 230,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "演出，周边，众筹"
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

