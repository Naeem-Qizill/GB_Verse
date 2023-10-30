import 'package:flutter/material.dart';

import '../utils/colors.dart';


class Dots extends StatelessWidget {
  final double width;
  final Color color;
  const Dots({super.key, required this.width,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 6,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
