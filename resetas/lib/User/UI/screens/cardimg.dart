import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyArticles extends StatelessWidget {
  String image = "";
  String heading = "";
  String subHeading = "";
  String cuerpo = "";

  MyArticles(this.image, this.heading, this.subHeading, this.cuerpo);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      elevation: 8,
      child: Column(children: <Widget>[
        Container(
          height: 260.0,
          width: 200.0,
          margin: EdgeInsets.only(top: 10.0, left: 20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        Container(
          child: Text(
            this.heading,
          ),
        ),
        Container(
          child: Text(
            this.subHeading,
          ),
        ),
        Container(
          child: Text(
            this.cuerpo,
          ),
        ),
      ]),
    );
  }
}
