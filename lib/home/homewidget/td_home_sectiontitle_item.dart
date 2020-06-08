
import 'package:flutter/material.dart';

class TDHomePageSectionItem extends StatelessWidget {

  final String imageName;

  TDHomePageSectionItem(this.imageName);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Image.asset(
            'assets/images/homepage/${imageName}.png'
          ),
        ),
      ],
    );
  }
}
