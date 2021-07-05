import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxline = 1;

  TextInput(
      {@required this.hintText,
      @required this.inputType,
      @required this.controller,
      this.maxline = 1});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.0, left: 20.0),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxline,
        style: TextStyle(fontSize: 20.0, color: Colors.green),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          border: InputBorder.none,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFe5e5e5)),
              borderRadius: BorderRadius.all(Radius.circular(9.0))),
        ),
      ),
    );
  }
}
