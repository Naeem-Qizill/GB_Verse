import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;
  final lineHeight;
  final double size;
  final FontWeight fontWeight;

  const MyText(
      {super.key,
      required this.text,
      required this.fontWeight,
      required this.size,
       this.textAlign= TextAlign.start,
      required this.color,
        this.lineHeight = 1.16});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          height: lineHeight),
    );
  }
}
