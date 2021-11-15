import 'package:flutter/material.dart';

class TextFieldContent extends StatelessWidget {
  TextFieldContent(
      {this.obscure,
        this.controller,
        this.maxLength,
        this.suffixIcon,
        this.prefixIcon,
        this.text,
        this.press,
        this.hintText});

  final String text;
  final String hintText;
  final Function press;
  final Icon prefixIcon;
  final IconButton suffixIcon;
  final TextEditingController controller;
  final bool obscure;
  final int maxLength;
  final maxLines = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
        onSubmitted: press,
        maxLines: 1,
        maxLength: maxLength,
        decoration: InputDecoration(
          counterStyle: TextStyle(
            color: Colors.white70,
          ),
          contentPadding:
          new EdgeInsets.symmetric(vertical: 23.0, horizontal: 10.0),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 17,
            color: Colors.white70,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white,
              width: 3,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white54,
              width: 3,
            ),
          ),
          labelText: text,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: IconTheme(
                data: IconThemeData(
                  color: Colors.pink[600],
                ),
                child: prefixIcon),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: suffixIcon,
          ),
        ),
      ),
    );
  }
}
