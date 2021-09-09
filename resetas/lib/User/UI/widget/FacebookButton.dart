// ignore_for_file: file_names, annotate_overrides, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FacebookButton extends StatefulWidget {
  final VoidCallback onPresseds;
  double widthC = 0.0;
  double heightC = 0.0;
  final String text;
  @override
  FacebookButton(
      {Key? key,
      required this.text,
      required this.onPresseds,
      required this.widthC,
      required this.heightC});
  @override
  State<StatefulWidget> createState() {
    return _FacebookButton();
  }
}

class _FacebookButton extends State<FacebookButton> {
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPresseds,
      child: Container(
          margin: EdgeInsets.only(top: 10, right: 10, left: 10),
          width: widget.widthC,
          height: widget.heightC,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(05.0),
          ),
          child: Center(
              child: Text(widget.text,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Lato",
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold)))),
    );
  }
}
