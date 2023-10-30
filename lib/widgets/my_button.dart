import 'package:flutter/material.dart';

import '../utils/colors.dart';

class myButton extends StatelessWidget {
  const myButton({
    super.key, required this.text, required this.width, required this.height, required this.buttonColor, required this.TextColor, required this.fontSize, required this.fontWeight, required this.borderRadius,
  });

  final String text;
  final double width;
  final double height;
  final Color buttonColor;
  final Color TextColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double borderRadius;
 


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(text, style: TextStyle(color:TextColor, fontWeight: fontWeight, fontSize: fontSize),)),
      ),
    );
  }
}