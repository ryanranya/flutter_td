

import 'package:flutter/material.dart';


class TDHomePageBestPick extends StatelessWidget {

  final List<Map<String, dynamic>> bastPickArray;

  TDHomePageBestPick(this.bastPickArray);

  @override
  Widget build(BuildContext context) {
    return bastPickGridView();
  }

  Widget bastPickGridView() {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 320,
        childAspectRatio: 1.8,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: bastPickItem(bastPickArray[index]),
          ),
        );
      },
      itemCount: bastPickArray.length,
    );
  }

  Widget bastPickItem(dynamic imageData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(imageData["poster"]),
          ),
        ),
        SizedBox(height: 10,),
        Text(
            imageData["title"],
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        SizedBox(height: 7,),
        Text(
          imageData["tags"][0]["name"],
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 12,color: Colors.black45),
        )
      ],
    );
  }
}
